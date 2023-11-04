#!/usr/bin/env perl

# Constructs stream file for GBSA_obc calculations on NA through
# CHARMM/OpenMM interface using OpenMM/Amber forcefield and obc xml files.

my $fnamertf;
my $fnameobc;
while ($#ARGV>=0) {
  if ($ARGV[0] eq "-help" || $ARGV[0] eq "-h") {
    &usage();
  } elsif ($ARGV[0] eq "-rtf") {
    shift @ARGV;
    $fnamertf=shift @ARGV;
  } elsif ($ARGV[0] eq "-obc") {
      shift @ARGV;
      $fnameobc = shift @ARGV;
  } else { &usage() }
}
# Main calls
readrtf($fnamertf);
my ($r_ref, $s_ref) = readobc($fnameobc);
@radiusobc = @$r_ref; @scaleobc = @$s_ref;
&makestream;
# End of Main calls
sub makestream {
    for my $linnum (@resstart){
	$i = index($rtf[$linnum], "=");
	my $resname = substr($rtf[$linnum],$i+2,-2);
	my $newres;
	my $dores;
	if ( !(uc $resname =~ /ARG$/) ) { ($newres, $dores) = findbase($resname) }
	if($dores>0) {
	    my ($a_ref, $t_ref) = getatoms($linnum+1);
	    my @atoms = @$a_ref; my @types = @$t_ref;
	    for (my $iatm = 0; $iatm <= $#atoms; $iatm++){
		if( !($atoms[$iatm]=~/^P/) ) {
		    print "scalar wmain set $radiusobc[$types[$iatm]] select resname $newres .and. type $atoms[$iatm] end\n";
		    print "scalar wcomp set $scaleobc[$types[$iatm]] select resname $newres .and. type $atoms[$iatm] end\n";
		}
	    }
	}
	print "scalar wmain = radius select type P end\n";
	print "scalar wcomp set 1 select type P end\n";

    }
}
sub readobc {
    my $fname = shift;
    open INP, "$fname";
    my @radiusobc; my $scaleobc;
    while(<INP>) {
        chomp;
        my $obcline = $_;
        if($obcline =~ /Atom type=/) {
	    my $i = index($obcline, "\"");
	    my $j = index($obcline, "charge");
	    my $typeobc =  substr($obcline, $i+1, $j-$i-3);
	    $i = index($obcline, "s=\"");
	    $j = index($obcline, "scale");
	    $radiusobc[$typeobc] =  substr($obcline, $i+3, $j-$i-5);
	    $radiusobc[$typeobc] *= 10.0;
	    $i = index($obcline, "le=\"");
	    $j = index($obcline, ">");
	    $scaleobc[$typeobc] = substr($obcline, $i+4, $j-$i-6);
	}
    }
    close(INP);
    return (\@radiusobc, \@scaleobc);
}
sub getatoms {
    my $line = shift;
    my $finished = 1;
    my @atom; my @type;
    while( $finished ) {
	if ( $rtf[$line] =~ /Atom name=/ ) {
	    my $i = index($rtf[$line], "\"");
	    my $j = index($rtf[$line], "type");
	    push @atom, substr($rtf[$line], $i+1, $j-$i-3);
            # Convert from Amber atom type names to CHARMM
	    if($atom[$#atom] =~ /H2\'1/){$atom[$#atom]="H2\'";}
	    if($atom[$#atom] =~ /H2\'2/){$atom[$#atom]="H2\'\'";}
	    if($atom[$#atom] =~ /H5\'1/){$atom[$#atom]="H5\'";}
	    if($atom[$#atom] =~ /H5\'2/){$atom[$#atom]="H5\'\'";}
	    if($atom[$#atom] =~ /C7/){$atom[$#atom]="C5M";}
	    if($atom[$#atom] =~ /H71/){$atom[$#atom]="H51";}
	    if($atom[$#atom] =~ /H72/){$atom[$#atom]="H52";}
	    if($atom[$#atom] =~ /H73/){$atom[$#atom]="H53";}
            # End of convert
	    $i = index($rtf[$line], "pe=");
	    $j = index($rtf[$line], ">");
	    push @type, substr($rtf[$line], $i+4, $j-$i-6);
	    $line++;
	}
	elsif ( $rtf[$line] =~ /Residue/ ) {$finished = 0}
	else {$line++}
    }
    return (\@atom, \@type);
}
sub findbase {
    my $resname = shift;
    my $dores = 0;
    if ( uc $resname =~ /DA/  ||
	 uc $resname =~ /DA3/ ||
	 uc $resname =~ /DA5/ ||
	 uc $resname =~ /RA/  ||
	 uc $resname =~ /RA3/ ||
	 uc $resname =~ /RA5/ ||
	 uc $resname =~ /RAN/ ||
	 uc $resname =~ /DAN/ ) {
	$resname = "ADE";$dores = 1; return ($resname, $dores) }
    elsif ( uc $resname =~ /DC/  ||
	    uc $resname =~ /DC3/ ||
	    uc $resname =~ /DC5/ ||
	    uc $resname =~ /RC/  ||
	    uc $resname =~ /RC3/ ||
	    uc $resname =~ /RC5/ ||
	    uc $resname =~ /RCN/ ||
	    uc $resname =~ /DCN/ ) {
	$resname = "CYT";$dores = 1; return ($resname, $dores) }
    elsif ( uc $resname =~ /DG/  ||
	    uc $resname =~ /DG3/ ||
	    uc $resname =~ /DG5/ ||
	    uc $resname =~ /RG/  ||
	    uc $resname =~ /RG3/ ||
	    uc $resname =~ /RG5/ ||
	    uc $resname =~ /RGN/ ||
	    uc $resname =~ /DGN/ ) {
	$resname = "GUA";$dores = 1; return ($resname, $dores) }
    elsif ( uc $resname =~ /DT/  ||
	    uc $resname =~ /DT3/ ||
	    uc $resname =~ /DT5/ ||
	    uc $resname =~ /DTN/ )  {
	$resname = "THY";$dores = 1; return ($resname, $dores) }
    elsif ( uc $resname =~ /RU/  ||
	    uc $resname =~ /RU3/ ||
	    uc $resname =~ /RU5/ ||
	    uc $resname =~ /RUN/ ) {
	$resname = "URA";$dores = 1; return ($resname, $dores) }
    else { $dores = 0; return ($resname, $dores) }
}
sub readrtf {
    my $fname = shift;
    open INP, "$fname";
    while(<INP>) {
        chomp;
        my @f=split(/ +/);
        push @rtf, $_;
        if($rtf[$#rtf]=~/Residue name=/){push @resstart, $#rtf
}
    }
    close(INP);
}
sub usage {
    printf STDERR "Function: This program reads an OpenMM/Amber prmtop/xml file and\n";
    printf STDERR "an OpenMM/Amber radius/scale/xml file and builds\n";
    printf STDERR "CHARMM/OpenMM GBSA_obc radius and scale stream file for GBSA_obc\n";
    printf STDERR "calculations through CHARMM/OpenMM\n";
    printf STDERR "usage: makednarna_obc.pl -rtf <rtf_xml_filename> -obc <obc_xml_filename\n";
    printf STDERR "NOTE: results should be processed with sort -u to eliminate multiples.\n";
    exit;
}
