require_relative 'treino_exercicio'
require_relative 'treino'
require_relative 'exercicio'

describe TreinoExercicio do
    before(:each) do
        @exercicio = Exercicio.new('001','nome',300,3,1,5)
        @treino = Treino.new('001','nome',300,2,"10:30","01/01/11")
        @treinoExercicio = TreinoExercicio.new("001",@treino,@exercicio)
    end

    it 'creates a Treino exercicio object' do

        expect(@treinoExercicio.codigo).to eql('001')
        expect(@treinoExercicio.exercicio).to eql(@exercicio)
        expect(@treinoExercicio.treino).to eql(@treino)
        expect(@treinoExercicio.treino.nome).to eql('nome')




    end


    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end
