# encoding: UTF-8

class Game
  def initialize(ui = CliUi.new)
    @ui = ui
    @ended = false
  end

  def start
    initial_message = "Bem-vindo ao jogo da forca!"
    @ui.write(initial_message)
  end

  def ended?
    @ended
  end

  def next_step
    @ui.write("Qual o tamanho da palavra a ser sorteada?")
    word_length = @ui.read
  end
end
