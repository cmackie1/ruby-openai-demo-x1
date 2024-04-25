
require 'openai'

client = OpenAI::Client.new(access_token: ENV.fetch("TEMP_GPT_APPDEV"))

messages = [
  { "type": "text", "text": "Can you tell me how many umbrellas and beach balls there are in this image?"},
  { "type": "image_url",
    "image_url": {
      "url": "https://images6.alphacoders.com/925/thumb-1920-925904.jpg",
    },
  }
]
#response = client.chat(
 #   parameters: {
 #       model: "gpt-4-vision-preview", # Required.
#        messages: [{ role: "user", content: messages}], # Required.
 #   })
#puts response.dig("choices", 0, "message", "content")

response = client.images.edit(parameters: { prompt: "A red circle over the character Waldo", image: "waldotest2.PNG", mask: "redcircle.PNG" })
puts response.dig("data", 0, "url")
