require_relative 'treino_exercicio'
require_relative 'treino'
require_relative 'exercicio'


describe Exercicio do
    before(:each) do
        @exercicio = Exercicio.new('001','nome',300,3,1,5)
        @treino = Treino.new('001','nome',300,2,"10:30","01/01/11")
        @treinoExercicio = TreinoExercicio.new("001",@treino,@exercicio)

    end

    it 'creates a exercicio object' do

        expect(@exercicio.codigo).to eql('001')
        expect(@exercicio.nome).to eql('nome')
        expect(@exercicio.caloriaGasta).to eql(300)
        expect(@exercicio.numeroSerie).to eql(3)
        expect(@exercicio.tempoDescanso).to eql(1)
        expect(@exercicio.tempoExercicio).to eql(5)

        expect(@exercicio.treinosExercicios).to eql([])


    end

    it 'insert new Terinos Exercicios and verify' do
        @exercicio.insert_treinosExercicios(@treinoExercicio)
        expect(@exercicio.verify_treinosExercicios(@treinoExercicio)).to eql(true)
    end

    after(:each) do
        @treino = nil
        @exercicio = nil
        @treinoExercicio = nil
    end
end
