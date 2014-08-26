require_relative 'usuario'
require_relative 'historico'

describe Historico do
    before(:each) do
        @usuario = Usuario.new('001','nome')

        @historico = Historico.new("001",104,@usuario)
        @usuario.insert_historicos(@historico)
    end

    it 'creates a Treino exercicio object' do

        expect(@historico.codigo).to eql('001')
        expect(@historico.peso).to eql(104)
        expect(@historico.usuario).to eql(@usuario)

    end


    after(:each) do
        @usuario= nil
        @historico = nil

    end
end
