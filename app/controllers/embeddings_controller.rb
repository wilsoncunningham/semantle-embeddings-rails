class EmbeddingsController < ApplicationController
  def create
    client = OpenAI::Client.new
    user_input = params.fetch("query_input")
    # user_unput = "Water"

    @response = client.embeddings(
      parameters: {
        model: "text-embedding-ada-002",
        input: user_input
      }
    )

    embedding = response.dig("data", 0, "embedding")

    new_item = Item.new
    embedding = new_item.embedding
    user_input = new_item.word
    new_item.save


    # puts response.dig("data", 0, "embedding")
    # => Vector representation of your embedding

    redirect_to("/")
  end
end
