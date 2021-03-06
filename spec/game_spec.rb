# encoding: UTF-8

require 'spec_helper'
require 'game'

describe Game do
  let(:ui) { double("ui") }
  
  subject(:game) { Game.new(ui) }

  describe "#start" do
    it "print the initial message" do
      initial_message = "Bem-vindo ao jogo da forca!"
      expect(output).to receive(:write).with(initial_message)

      game.start
    end
  end

  describe "#ended?" do
    it "return false when the game just started" do
      expect(game).not_to be_ended
    end
  end

  describe "next_step" do
    context "when de game just started" do
      it "asks the player for the length of the word to be raffled" do
        question = "Qual o tamanho da palavra a ser sorteada?"
        expect(ui).to receive(:write).with(question)
        
        expect(ui).to receive(:read)

        game.next_step
      end
    end
  end
end
