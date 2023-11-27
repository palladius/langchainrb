=begin
  To start:
  * gem install google-cloud-ai_platform
  * gem install google-cloud-ai_platform-v1

=end

# OpenAI works! but I pay
#llm = Langchain::LLM::OpenAI.new(api_key: ENV["OPENAI_API_KEY"])
# llm.embed(text: "foo bar")
# llm.complete(prompt: "What is the meaning of life?") # slow
# llm.chat(prompt: "Hey! How are you?") # total_tokens: 44

#llm = Langchain::LLM::GooglePalm.new(api_key: ENV["GOOGLE_PALM_API_KEY"] )
# @raw_response={"error"=>{"code"=>400, "message"=>"User location is not supported for the API use.", "status"=>"FAILED_PRECONDITION"}}>
#'google-cloud-ai_platform', '~> 0.2.0'




######################################################################

require 'google/cloud/ai_platform'
require 'google/cloud/ai_platform/v1'
require "google/apis/aiplatform_v1"

llm = Langchain::LLM::GoogleVertexAi.new(
  #api_key_file: ENV['GOOGLE_CLOUD_VERTEX_AI_KEY'], # useless
  #project_id: 'ricc-genai'
)
llm.embed(text: "foo bar")
ret = llm.embed(text: "foo bar")
#puts ret.embeddings rescue "No Embed mthod"
puts ret.class
