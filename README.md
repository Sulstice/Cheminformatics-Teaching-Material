# Cheminformatics-Teaching-Material

Hello, and welcome to my Github Repository for where I give access to my teaching materials, source code, and other things I use to teach at a undergraduate and graduate level cheminformatics. 

<p align="center">
  <img width="604" alt="180214512-4175c15f-33eb-44a8-84e6-4d22e85ef9aa" src="https://user-images.githubusercontent.com/11812946/193455613-c645a2f1-196b-4d0e-9f15-ef3902f99090.png">
</p>


These materials are designed with the idea that the student needing them has a working knowledge of organic chemistry I and II, as well as a computer science course, data structures. There are more advanced tutorials for folk at the graduate level but not completely organized into an official lecture series. I'll work on that component too. 

## Table of contents

- [Teaching Material](#teaching-material-)
  - [Lecture Series](#lecture-series)
  - [Organic Chemistry Standard Mechanisms](#organic-chemistry-standard-mechanisms)
  - [Development Operations](#development-operations)
  - [Principal Component Analysis](#principal-component-analysis)
  - [Cheminformatics](#cheminformatics)
  - [Computational Chemistry](#computational-chemistry)
  - [Molecular Dynamics](#molecular-dynamics)
  - [Machine Learning](#machine-learning)
  - [Force Fields](#force-fields)
  - [Electronic Record Compliance](#compliance)
  - [Miscellaenous Resources](#miscellaenous-resources)
  - [See Also](#see-also)

---

## Lecture Series

*Lecture Series for Undergraduate-Level Cheminformatics*

- [Lecture 001](https://sharifsuliman1.medium.com/lecture-001-how-to-write-smiles-introduction-to-converting-skeletal-diagrams-to-1-d-data-string-feb40752b5d7) - How to Write SMILES: Introduction to Converting Skeletal Diagrams to 1-D Data String Representation. - Suliman Sharif
- [Lecture 002](https://sharifsuliman1.medium.com/lecture-002-expanding-smiles-to-more-diverse-functional-groups-introduction-to-alkenes-alkynes-89d814152767) -  Expanding SMILES to more Diverse Functional Groups: Introduction to Alkenes, Alkynes, and Carbonyls. - Suliman Sharif
- [Lecture 003](https://sharifsuliman1.medium.com/lecture-003-designing-string-formation-algorithms-introduction-to-canonical-smiles-with-rdkit-53e14801e79a) - Designing String Formation Algorithms & Introduction to Canonical SMILES with RDKit - Suliman Sharif
- [Lecture 004](https://sharifsuliman1.medium.com/lecture-004-virtual-atoms-and-bonds-6621918c3a09) - Manipulating SMILES strings with Virtual Atoms and Bonds to create Combinatorial Libraries. - Suliman Sharif
- [Lecture 005](https://sharifsuliman1.medium.com/lecture-005-understanding-chemical-data-formats-and-writing-your-own-mol2-parser-part-1-cb8681e0d887) -  Understanding Chemical Data Formats and Writing Your Own Mol2 Parser Part 1. - Suliman Sharif

*Lecture Series for Graduate-Level Cheminformatics*

- [Lecture 001](https://sharifsuliman1.medium.com/lecture-001-advanced-cheminformatics-your-1st-million-smiles-b9b58fd62f3) - Your 1st Million SMILES - Suliman Sharif

*Youtube Lectures

- [Introduction to SMILES 001](https://www.youtube.com/watch?v=wbt9j3GzQGE) - Alkanes & Alcohols
- [Introduction to RDKit 001](https://www.youtube.com/watch?v=iPkFeGvYG1A) - Molecule Properties
- [Introduction to RDKit 002](https://www.youtube.com/watch?v=ECvHWVrkY80) - Analyzing Cannabis and Taking the Probability Distribution of Molecule Properties
- [Introduction into Jupyter Notebook For Scientists](https://www.youtube.com/watch?v=fZoJqXftEls) - Setup Port Forwarding, And Managing Imports

## Organic Chemistry Standard Mechanisms

- [Hydrobromination](https://sulstice.medium.com/standardizing-mechanisms-hydrobromination-of-styrene-in-smiles-5fb21d5bd76e) - Hydrobromination of Styrene in SMILES
- [Friedel-Crafts Acylation](https://medium.com/@sulstice/standardizing-mechanisms-hydrobromination-of-styrene-in-smiles-5fb21d5bd76e) - Friedel-Crafts Acylation in SMILES 

## Development Operations

- [Python Package Distribution for Scientific Publications](https://sharifsuliman1.medium.com/a-tutorial-for-releasing-a-python-package-for-scientific-publication-f6817c91cf45) - A Comprehensive Overview for releasing a Python Package for Scientific Publication.
- [Monitoring your System with Python](https://sharifsuliman1.medium.com/take-a-glance-at-your-server-c5070c8d1dd1) - Using Python Glances to Monitor Your System 
- [Modern Github Badges](https://sharifsuliman1.medium.com/modern-github-badges-for-open-source-repositories-fb4dceeb368a) - Modern Github Badges For Open Source Repositories 
- [Automating Cheminformatics Workflows](https://sharifsuliman1.medium.com/automating-cheminformatics-with-apache-airflow-step-1-preparing-smiles-transformations-on-large-f007ec614e51) - Automating Cheminformatics with Apache Airflow — Step 1: Preparing SMILES Transformations on Large Scale
- [Downloading the ZincDB Rapidly](https://sharifsuliman1.medium.com/downloading-the-zinc-database-rapidly-with-aria2-6be150db6617) - Downloading the Zinc Database Rapidly with Aria2 
- [Useful Github Action Bots](https://sharifsuliman1.medium.com/useful-github-actions-bots-to-regulate-my-python-package-c1f02032024d) - Useful Github Actions Bots to Regulate my Python Package
- [Debugging Distribution Bugs](https://sharifsuliman1.medium.com/debugging-file-encoding-and-file-path-distribution-bugs-for-globalchem-with-github-action-bots-62ca53827686) - Debugging File Encoding and File Path Distribution Bugs for GlobalChem with Github Action Bots. 

## Principal Component Analysis

- [PCA on PihKal Book](https://sharifsuliman1.medium.com/using-principal-component-analysis-to-distinct-aromatic-and-non-aromatic-compounds-and-identify-dd01bcebdb47) - Principal Component Analysis on the list of SMILES from Pihkal using GlobalChem and IUPAC 
- [Using PCA to Detect Aromaticity](https://sharifsuliman1.medium.com/using-principal-component-analysis-to-distinct-aromatic-and-non-aromatic-compounds-and-identify-dd01bcebdb47) - Using Principal Component Analysis to distinct Aromatic and Non-Aromatic Compounds and Identify Common Scaffolds for Diverse Communities using SMILES and GlobalChem. 
- [PCA on Cannabis Sativa](https://sharifsuliman1.medium.com/understanding-what-is-inside-of-cannabis-sativa-using-principal-component-analysis-with-global-chem-84c8038f07a8) - Understanding what is inside of Cannabis Sativa using Principal Component Analysis with Global-Chem
- [PCA on Cannabis Sativa and Oral Contraceptives](https://sharifsuliman1.medium.com/mixing-global-chem-nodes-cannabis-sativa-and-oral-contraceptives-for-principal-component-analysis-5e51097e6218) - Mixing Global-Chem Nodes: Cannabis Sativa and Oral Contraceptives for Principal Component Analysis.
- [PCA on Alternative Jet Fuels](https://sharifsuliman1.medium.com/principal-component-analysis-on-alternative-jet-fuels-with-global-chem-9b75343cb267) - Principal Component Analysis on Alternative Jet Fuels with Global-Chem

## Cheminformatics

- [Understanding Drug Likeness Filters](https://sharifsuliman1.medium.com/understanding-drug-likeness-filters-with-rdkit-and-exploring-the-withdrawn-database-ebd6b8b2921e) - Understanding drug-likeness filters with RDKit and exploring the WITHDRAWN database.
- [Preparing Chemical Data](https://sharifsuliman1.medium.com/preparing-chemical-data-in-5-minutes-with-cocktail-shaker-rdkit-and-pandas-6fb9b512d958) - Preparing Chemical Data in 5 minutes with Cocktail Shaker, RDKit, and Pandas 
- [Peptide Fingerprints](https://sharifsuliman1.medium.com/trends-in-fingerprint-matching-of-peptides-using-tanimoto-rdkit-and-cocktail-shaker-4d6eb50021d4) - Trends in fingerprint matching of peptides using Tanimoto, RDKit, and Cocktail Shaker. 
- [SMILES to PDF](https://sharifsuliman1.medium.com/smiles-to-pdf-and-back-again-can-we-improve-publication-mining-4f682cc6a2c6) - Converting a List of SMILES to PDF form. 
- [Morgan Fingerprinting](https://sharifsuliman1.medium.com/understanding-morgan-f70186b172f6) - Understanding Morgan and converting the chemical structure to a number. 
- [Chemical Reference Databases](https://sharifsuliman1.medium.com/using-the-minifrag-database-to-validate-your-smarts-strings-c3bb46ecacd8) - Using the MiniFrag Database to validate your SMARTS strings 
- [Variations of SMILES](https://sharifsuliman1.medium.com/validating-smiles-with-rdkit-pysmiles-molvs-and-partialsmiles-5b65e800235f) - Validating SMILES with RDKit, PySMILES, MolVS, and PartialSMILES 
- [Protonating SMILES](https://sharifsuliman1.medium.com/protonating-your-smiles-strings-over-a-range-of-ph-for-small-molecules-and-proteins-78a472a66943) - Protonating your SMILES strings over a range of pH for Small Molecules and Proteins 
- [Fast Cheminformatics](https://sharifsuliman1.medium.com/fastcheminformatics-c927907f2c08) - Using Modin or GPU to read in massive datasets of molecules. 
- [Cannabis Compounds](https://sharifsuliman1.medium.com/exploring-promiscuous-tetrahydrocannabinol-thc-chemical-space-94c62d5d23e) - Exploring Promiscuous Tetrahydrocannabinol (THC) Chemical Space
- [Sn1, Sn2, E1, E2 Mechanism](https://sharifsuliman1.medium.com/sn1-sn2-e1-e2-mechanism-explained-in-smiles-8c7745c92ed8) - Sn1, Sn2, E1, E2 Mechanism Explained in SMILES.
- [Azridine](https://sharifsuliman1.medium.com/aziridine-3e62828df2c2) - Aziridine 
- [Organophosphorous Nerve Toxic Agents](https://sharifsuliman1.medium.com/selection-of-functional-groups-for-chemical-nerve-toxic-agents-novichok-ab1c5a47b918) - Selection of Functional Groups for Chemical Nerve Toxic Agents — Novichok

## Computational Chemistry

- [SAPT Theory of Helium](https://sulstice.medium.com/symmetry-adapted-perturbation-theory-sapt-of-helium-in-psi4-7aa76e148198) - Symmetry-Adapted Perturbation Theory (SAPT) of Helium in Psi4
- [Harmonic Analysis in Psi4](https://sharifsuliman1.medium.com/harmonic-analysis-in-psi4-910086603223) - Harmonic Analysis in Psi4
- [Optimizing Ligand Geometry](https://sharifsuliman1.medium.com/optimizing-a-molecules-geometry-with-psi4-392267abb45d) - Optimizing A Molecule’s Geometry with Psi4
- [Visualizing Molecular Orbitals](https://sulstice.medium.com/visualizing-frontier-orbitals-with-psi4-and-python-c01f335afaad) - Visualizing Frontier Orbitals with Psi4 and Python

## Molecular Dynamics

- [Converting Coordinate Files](https://sharifsuliman1.medium.com/converting-gro-files-to-pdb-using-python-bbc11931375d) - Converting GRO files to PDB using Python - Suliman Sharif
- [Calculating End to End Distance Between Atoms](https://sharifsuliman1.medium.com/calculating-the-end-to-end-distance-of-two-atoms-using-mdanalysis-ab7269e4bb5b) - Calculating the End-to-End distance of two atoms using MDAnalysis 
- [Monitoring your Simulation](https://sharifsuliman1.medium.com/using-python-to-check-molecular-dynamic-simulation-log-files-8ab128ca54f8) - Using python to check molecular dynamic simulation log files. 
- [Coming to Convergence](https://medium.com/p/how-i-was-checking-to-tell-if-there-was-convergence-in-my-simulations-8b324934483e) - How I was checking to tell if there was convergence in my simulations.
- [Controlling Tumbling](https://sharifsuliman1.medium.com/controlling-tumbling-effects-in-a-molecular-dynamics-simulation-f082513fd0a9) - Controlling Tumbling Effects in a Molecular Dynamics Simulation. 
- [Calculating Dipole Moments](https://sharifsuliman1.medium.com/analyzing-dipole-moments-in-molecular-dynamics-simulations-4c76ce3ba5b0) - Analyzing Dipole Moments in Molecular Dynamics Simulations 
- [Multiprocessing for Hydrogen Bonds](https://sharifsuliman1.medium.com/exploring-multi-processing-for-exhaustive-hydrogen-bonding-analysis-using-mdanalysis-and-futures-661839079126) - Exploring Multi-Processing for Exhaustive Hydrogen Bonding Analysis using MDAnalysis and Futures 
- [Calculating Density of a Liquid](https://sharifsuliman1.medium.com/calculating-density-of-a-neat-liquid-from-a-molecular-dynamics-simulation-with-namd-d67018e068a7) - Calculating Density of a Neat Liquid from a Molecular Dynamics Simulation with NAMD 
- [Constant Pressure and Temperature Control](https://sharifsuliman1.medium.com/maintaining-constant-pressure-and-temperature-in-namd-7c2c734146dd) - Maintaining Constant Pressure and Temperature in NAMD.

## Machine Learning

- [Creating an RNN to Convert IUPAC to SMILES](https://sharifsuliman1.medium.com/exploring-bridging-cheminformatic-languages-between-machines-and-humans-using-ai-part-1-8899ca363979) - Exploring bridging cheminformatic languages between machines and humans using AI — Part 1 
- [Probability Density](https://sharifsuliman1.medium.com/how-to-take-the-probability-density-of-any-set-of-numbers-and-make-an-analysis-cca1abdce222) - How to take the probability density of any set of numbers and make an analysis.
- [Exploring Chemical Knowledge Graph](https://sharifsuliman1.medium.com/exploring-graph-networks-for-iupac-nomenclature-and-smiles-380c870737fc) - Exploring Graph Networks for IUPAC Nomenclature and SMILES. 
- [Using Sunbursting to Detect Chemical Diversity](https://sharifsuliman1.medium.com/using-iupac-with-globalchem-sunbursts-to-determine-chemical-diversity-for-a-list-of-smiles-with-db844a59abe6) - Using IUPAC with GlobalChem Sunbursts to determine Chemical Diversity for a list of SMILES with Plotly. 
- [Sunbursting FDA Colour Additive Lists](https://sharifsuliman1.medium.com/sunbursting-the-fda-colour-additive-7-lists-through-toxalerts-globalchem-nodes-added-95ffe8ff9e37) - Sunbursting the FDA Colour Additive 7 Lists through ToxAlerts. 
- [Decoding Fingerprints to Chemical Name](https://sharifsuliman1.medium.com/decoding-fingerprints-to-iupac-natural-chemical-names-aff31d058a10) - Decoding Fingerprints to IUPAC/Natural Chemical Names 
- [Levenshtein Distance Applied on Common Chemical & IUPAC Names](https://sharifsuliman1.medium.com/applying-levenshtein-distance-on-iupac-preferred-names-in-globalchem-for-natural-language-1569a727ca13) - Applying Levenshtein distance on IUPAC/Preferred names in GlobalChem for Natural Language Processing.
- [Newick Trees](https://sharifsuliman1.medium.com/learning-a-newick-tree-6fdb8ead9389) - A Newick Tree for Protein Families and Relations
- [Neo4J GraphDatabases](https://sharifsuliman1.medium.com/part-1-connecting-globalchem-knowledge-graph-to-neo4j-graph-database-f613ba67da77) - Part 1 — Connecting GlobalChem Knowledge Graph to Neo4j Graph Database 


## Force Fields

- [What are Force Fields](https://sharifsuliman1.medium.com/what-are-force-fields-a-coder-perspective-into-charmm-2a3c03fb684f) - What are force fields? A coder perspective into CHARMM. 
- [What are Atom Types](https://sharifsuliman1.medium.com/understanding-atom-types-part-1-the-philosophy-ca8c42d333fe) - How to take the probability density of any set of numbers and make an analysis. 
- [Atom Types and SMILES to CurlySMILES](https://sharifsuliman1.medium.com/inclusion-of-atom-types-in-force-fields-to-produce-mixed-cxsmiles-cxsmarts-curlysmiles-832d40ff70d) - Inclusion of Atom Types in Force Fields to produce mixed CXSMILES, CXSMARTS, CurlySMILES 
- [Mixing CGenFF Atom Types with SMILES](https://sharifsuliman1.medium.com/mixing-cgenff-atom-types-to-rdkit-mol2svg-function-and-visualizing-4cd29c2d7122) - Mixing CGenFF Atom Types to RDKit Mol2SVG Function and Visualizing 

## Electronic Record Compliance

- [Establishing EU and US Compliance in Your Software](https://sharifsuliman1.medium.com/making-global-chem-github-repository-21-cfr-part-11-and-fair-compliant-for-u-s-89b7faab0f95) - Making Global-Chem Github Repository 21 CFR Part 11 and FAIR compliant for U.S and European Countries. 

## Miscellaenous Resources

- [Hosting Websites](https://sharifsuliman1.medium.com/how-i-host-websites-for-12-yr-c0fb0e37184c) - How to Host Static Websites for Cheap. 
- [Cloud Development for Academic Labs](https://sharifsuliman1.medium.com/implementing-github-code-spaces-for-an-academic-lab-45b920757296) - Implementing Github Code spaces for an Academic Lab. 


