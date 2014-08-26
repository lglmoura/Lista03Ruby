
class Exercicio
    attr_accessor :codigo,:nome,:caloriaGasta,:numeroSerie,:tempoDescanso,:tempoExercicio,:treinosExercicios
    def initialize(codigo,nome,caloriaGasta,numeroSerie,tempoDescanso,tempoExercicio,treinosExercicios=[])
        @codigo = codigo
        @nome = nome
        @caloriaGasta = caloriaGasta
        @numeroSerie = numeroSerie
        @tempoDescanso = tempoDescanso
        @tempoExercicio = tempoExercicio
        @treinosExercicios=treinosExercicios

    end

    def insert_treinosExercicios(treinoExercicio)
        if not (@treinosExercicios.include? treinoExercicio)
            @treinosExercicios << treinoExercicio
         end
    end

    def verify_treinosExercicios(treinoExercicio)
        return (@treinosExercicios.include? treinoExercicio)
    end

end