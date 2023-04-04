# frozen_string_literal: true
class Consultum < ApplicationRecord
  belongs_to :paciente
  belongs_to :dentistum
  has_one :relatorio_consultum, :dependent => :destroy

  validates :data, presence: true
  validates :data, inclusion: { in: ->(_record) { Time.zone.today..Date::Infinity.new }, message: 'inválida!' }

  validates :horario, presence: true
  validate :horario_fora_do_expediente

  private

  # Valida se o horário da consulta está no intervalo de 8:00 as 16:00
    def horario_fora_do_expediente
      if horario.present?
        aberto = Time.parse('8:00').strftime('%H:%M')
        fechado = Time.parse('16:00').strftime('%H:%M')
        fora_do_expediente = horario.strftime('%H:%M') < aberto || horario.strftime('%H:%M') > fechado
        return unless fora_do_expediente

        errors.add(:horario, 'deve estar entre 8:00 e 16:00')
    end
    end
end
