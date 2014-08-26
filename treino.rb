
class Treino
    attr_accessor :codigo,:nome,:totalCaloria,:tempoTotal,:horario,:data,:treinosExercicios,:usuariosTreinos
    def initialize(codigo,nome,totalCaloria,tempoTotal,horario,data,treinosExercicios=[],usuariosTreinos=[])
        @codigo = codigo
        @nome = nome
        @totalCaloria = totalCaloria
        @tempoTotal = tempoTotal
        @horario = horario
        @data = data
        @treinosExercicios=treinosExercicios
        @usuariosTreinos=usuariosTreinos
    end

    def insert_treinosExercicios(treinoExercicio)
        if not (@treinosExercicios.include? treinoExercicio)
            @treinosExercicios << treinoExercicio
         end
    end

    def verify_treinosExercicios(treinoExercicio)
        return (@treinosExercicios.include? treinoExercicio)
    end

    def insert_usuariosTreinos(usuarioTreino)
        if not (@usuariosTreinos.include? usuarioTreino)
            @usuariosTreinos << usuarioTreino
         end
    end

    def verify_usuariosTreinos(usuarioTreino)
        return (@usuariosTreinos.include? usuarioTreino)
    end
end