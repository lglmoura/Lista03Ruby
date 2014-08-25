require_relative 'treino'

describe Treino do
    before(:each) do
        @treino = Treino.new('001','nome',300,2,"10:30","01/01/11")

    end

    it 'creates a treino object' do

        expect(@treino.codigo).to eql('001')
        expect(@treino.nome).to eql('nome')
        expect(@treino.totalCaloria).to eql(300)
        expect(@treino.tempoTotal).to eql(2)
        expect(@treino.horario).to eql("10:30")
        expect(@treino.data).to eql("01/01/11")

        expect(@treino.treinosExercicios).to eql([])
        expect(@treino.usuariostreinos).to eql([])

    end

    it 'insert new Treinos Exercicios and verify' do
        @treino.insert_projeto(@treinosExercicios)
        expect(@treino.verify_treinosExecicios(@treinosExecicios)).to eql(true)
    end

    it 'insert new Usuarios treinos' do
        @treino.insert_projeto(@usuariostreinos)
        expect(@treino.verify_usuariostreinos(@usuariostreinos)).to eql(true)
    end

    after(:each) do
        @treino = nil
    end
end
