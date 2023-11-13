# Imports
# -------
import os

# Langchain Imports
# -----------------

from langchain.llms import OpenAI
from langchain.vectorstores import Chroma
from langchain.document_loaders import TextLoader
from langchain.embeddings import OpenAIEmbeddings
from langchain.memory import ConversationBufferMemory
from langchain.chains import ConversationalRetrievalChain
from langchain.document_loaders import PyPDFDirectoryLoader

class PhotoswitchLLM(object):

  __OPEN_API_KEY__ = ''

  def __init__(self):

    self.agent = None
    self.loader = self.load_node()
    self.create_word_embeddings_and_conversations()

  def load_node(self):

    loader = PyPDFDirectoryLoader("pihkal.pdf")
    text_loader = loader.load()

    return text_loader

  def create_word_embeddings_and_conversations(self):

    '''

    Create the Vector Database for Word Embeddings

    '''

    embeddings = OpenAIEmbeddings(openai_api_key=self.__OPEN_API_KEY__)
    vectordb = Chroma.from_documents(
      self.loader,
      embedding=embeddings,
      persist_directory="."
    )
    vectordb.persist()

    memory = ConversationBufferMemory(memory_key="chat_history", return_messages=True)

    conversation = ConversationalRetrievalChain.from_llm(
      OpenAI(temperature=0.8, openai_api_key=self.__OPEN_API_KEY__),
      vectordb.as_retriever(),
      memory=memory,
      max_tokens_limit=4000
    )

    self.agent = conversation

  def run_question(self, question=''):

    answer = self.agent({"question": question})

    return answer['answer']

if __name__ == '__main__':

  photoswitch_llm = PhotoswitchLLM()

  answer = photoswitch_llm.run_question(
    question='how to synthesize 2-(4-Iodo-2,5-dimethoxyphenyl)ethan-1-amine?'
  )

  print (answer)


