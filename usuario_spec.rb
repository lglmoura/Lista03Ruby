require_relative 'usuario'
require_relative 'historico'


describe Usuario do
    before(:each) do
        @usuario = Usuario.new('001','nome')
        @historico = Historico.new("001",104,@usuario)
        @usuario.insert_historicos(@historico)


    end

    it 'creates a usuario object' do

        expect(@usuario.codigo).to eql('001')
        expect(@usuario.nome).to eql('nome')

        expect(@usuario.historicos).to eql([@historico])


    end

    it 'insert new Usuarios Hitoricos and verify' do
        @usuario.insert_historicos(@historico)
        expect(@usuario.verify_historicos(@historico)).to eql(true)
    end



    after(:each) do
        @usuario = nil
        @historico = nil
    end
end
