# frozen_string_literal: true

module BCDice
  module GameSystem
    class Fortrust < Base
      ID = "Fortrust"
      NAME = "フォルトラスト"
      SORT_KEY = "ふおるとらすと"

      HELP_MESSAGE = <<~MESSAGETEXT
        ■ プレイング・ダイスロール

        □ ハーティ用（ Ft@H, Ft@Hearty ）
        □ クラリオン用（ Ft@C, Ft@Clarion ）
        □ モノクローム用（ Ft@M, Ft@Monochrome ）
      MESSAGETEXT

      P_ROLL_HEARTY = "Ft@Hearty".upcase.freeze
      P_ROLL_CLARION = "Ft@Clarion".upcase.freeze
      P_ROLL_MONOCHROME = "Ft@Monochrome".upcase.freeze

      register_prefix([P_ROLL_HEARTY, P_ROLL_CLARION, P_ROLL_MONOCHROME])

      def eval_game_system_specific_command(command)
        command = ALIAS[command] || command

        if command =~ /^#{P_ROLL_HEARTY}/i
            p_roll_hearty(command)
        elsif command =~ /^#{P_ROLL_CLARION}/i
            p_roll_clarion(command)
        elsif command =~ /^#{P_ROLL_MONOCHROME}/i
            p_roll_monochrome(command)
        else
            nil
        end
      end

      def p_roll_hearty(command)
        dice_a = @randomizer.roll_once(4)
        dice_b = @randomizer.roll_once(10)
        return "(1D4*1D10) ＞ #{dice_a} × #{dice_b} ＞ #{dice_a * dice_b}"
      end

      def p_roll_clarion(command)
        dices = @randomizer.roll_barabara(2, 20)
        return "(2b10) ＞ max[#{dices.join(', ')}] ＞ #{dices.max}"
      end

      def p_roll_monochrome(command)
        dices = @randomizer.roll_barabara(4, 6)
        return "(4D6) ＞ sum[#{dices.join(', ')}] ＞ #{dices.sum}"
      end

      ALIAS = {
        "Ft@H" => "Ft@Hearty",
        "Ft@C" => "Ft@Clarion",
        "Ft@M" => "Ft@Monochrome",
      }.transform_keys(&:upcase)

      register_prefix(ALIAS.keys)
    end
  end
end
