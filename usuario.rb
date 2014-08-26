
class Usuario
    attr_accessor :codigo,:nome,:historicos
    def initialize(codigo,nome,historicos=[])
        @codigo = codigo
        @nome = nome
        @historicos = historicos
    end

    def insert_historicos(historico)
        if not (@historicos.include? historico)
            @historicos << historico
         end
    end

    def verify_historicos(historico)
        return (@historicos.include? historico)
    end


end