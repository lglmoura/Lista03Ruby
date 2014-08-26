require_relative 'treino_exercicio'
require_relative 'treino'
require_relative 'exercicio'

describe Treino do
    before(:each) do
        @treino = Treino.new('001','nome',300,2,"10:30","01/01/11")
        @usuarioTreino = nil
        @exercicio = Exercicio.new('001','nome',300,3,1,5)
        @treinoExercicio = TreinoExercicio.new("001",@treino,@exercicio)
    end

    it 'creates a treino object' do

        expect(@treino.codigo).to eql('001')
        expect(@treino.nome).to eql('nome')
        expect(@treino.totalCaloria).to eql(300)
        expect(@treino.tempoTotal).to eql(2)
        expect(@treino.horario).to eql("10:30")
        expect(@treino.data).to eql("01/01/11")

        expect(@treino.treinosExercicios).to eql([])
        expect(@treino.usuariosTreinos).to eql([])

    end

    it 'insert new Treinos Exercicios and verify' do
        @treino.insert_treinosExercicios(@treinoExercicio)
        expect(@treino.verify_treinosExercicios(@treinoExercicio)).to eql(true)
    end

    it 'insert new Usuarios treinos' do
        @treino.insert_usuariosTreinos(@usuarioTreino)
        expect(@treino.verify_usuariosTreinos(@usuarioTreino)).to eql(true)
    end

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end
