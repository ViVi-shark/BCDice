#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.5.1
# from Racc grammar file "".
#

require 'racc/parser.rb'


require "bcdice/common_command/lexer"
require "bcdice/arithmetic/node"

module BCDice
  module Arithmetic
    class Parser < Racc::Parser


def self.parse(source)
  new.parse(source)
end

def parse(source)
  @lexer = BCDice::CommonCommand::Lexer.new(source)
  do_parse()
rescue ParseError
  nil
end

private

def next_token
  @lexer.next_token
end
##### State transition tables begin ###

racc_action_table = [
     8,    17,     8,    12,    13,     4,     5,     4,     5,     7,
     8,     7,     8,    12,    13,     4,     5,     4,     5,     7,
     8,     7,     8,    12,    13,     4,     5,     4,     5,     7,
     8,     7,     8,   nil,   nil,     4,     5,     4,     5,     7,
     9,     7,   nil,   nil,    10,    11,   nil,    10,    11,    22,
    26,    24,    25,    27 ]

racc_action_check = [
     0,     9,     4,     2,     2,     0,     0,     4,     4,     0,
     5,     4,     7,    18,    18,     5,     5,     7,     7,     5,
    10,     7,    11,    19,    19,    10,    10,    11,    11,    10,
    12,    11,    13,   nil,   nil,    12,    12,    13,    13,    12,
     1,    13,   nil,   nil,    16,    16,   nil,     1,     1,    16,
    21,    21,    21,    21 ]

racc_action_pointer = [
    -2,    40,    -6,   nil,     0,     8,   nil,    10,   nil,     1,
    18,    20,    28,    30,   nil,   nil,    37,   nil,     4,    14,
   nil,    47,   nil,   nil,   nil,   nil,   nil,   nil ]

racc_action_default = [
   -17,   -17,    -3,    -6,   -17,   -17,   -14,   -17,   -16,   -17,
   -17,   -17,   -17,   -17,   -12,   -13,   -17,    28,    -1,    -2,
    -4,    -7,   -15,    -5,    -8,    -9,   -10,   -11 ]

racc_goto_table = [
    14,    15,    23,     1,    18,    19,   nil,   nil,    20,    21,
    16 ]

racc_goto_check = [
     3,     3,     4,     1,     2,     2,   nil,   nil,     3,     3,
     1 ]

racc_goto_pointer = [
   nil,     3,    -6,    -4,   -19,   nil ]

racc_goto_default = [
   nil,   nil,     2,     3,   nil,     6 ]

racc_reduce_table = [
  0, 0, :racc_error,
  3, 14, :_reduce_1,
  3, 14, :_reduce_2,
  1, 14, :_reduce_none,
  3, 15, :_reduce_4,
  4, 15, :_reduce_5,
  1, 15, :_reduce_none,
  0, 17, :_reduce_7,
  1, 17, :_reduce_8,
  1, 17, :_reduce_9,
  1, 17, :_reduce_10,
  1, 17, :_reduce_11,
  2, 16, :_reduce_12,
  2, 16, :_reduce_13,
  1, 16, :_reduce_none,
  3, 18, :_reduce_15,
  1, 18, :_reduce_16 ]

racc_reduce_n = 17

racc_shift_n = 28

racc_token_table = {
  false => 0,
  :error => 1,
  :NUMBER => 2,
  :R => 3,
  :U => 4,
  :C => 5,
  :F => 6,
  :PLUS => 7,
  :MINUS => 8,
  :ASTERISK => 9,
  :SLASH => 10,
  :PARENL => 11,
  :PARENR => 12 }

racc_nt_base = 13

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "NUMBER",
  "R",
  "U",
  "C",
  "F",
  "PLUS",
  "MINUS",
  "ASTERISK",
  "SLASH",
  "PARENL",
  "PARENR",
  "$start",
  "add",
  "mul",
  "unary",
  "round_type",
  "term" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

def _reduce_1(val, _values, result)
 result = Arithmetic::Node::BinaryOp.new(val[0], :+, val[2])
    result
end

def _reduce_2(val, _values, result)
 result = Arithmetic::Node::BinaryOp.new(val[0], :-, val[2])
    result
end

# reduce 3 omitted

def _reduce_4(val, _values, result)
 result = Arithmetic::Node::BinaryOp.new(val[0], :*, val[2])
    result
end

def _reduce_5(val, _values, result)
         divied_class = val[3]
         result = divied_class.new(val[0], val[2])

    result
end

# reduce 6 omitted

def _reduce_7(val, _values, result)
 result = Arithmetic::Node::DivideWithGameSystemDefault
    result
end

def _reduce_8(val, _values, result)
 result = Arithmetic::Node::DivideWithCeil
    result
end

def _reduce_9(val, _values, result)
 result = Arithmetic::Node::DivideWithCeil
    result
end

def _reduce_10(val, _values, result)
 result = Arithmetic::Node::DivideWithRound
    result
end

def _reduce_11(val, _values, result)
 result = Arithmetic::Node::DivideWithFloor
    result
end

def _reduce_12(val, _values, result)
 result = val[1]
    result
end

def _reduce_13(val, _values, result)
 result = Arithmetic::Node::Negative.new(val[1])
    result
end

# reduce 14 omitted

def _reduce_15(val, _values, result)
 result = val[1]
    result
end

def _reduce_16(val, _values, result)
 result = Arithmetic::Node::Number.new(val[0])
    result
end

def _reduce_none(val, _values, result)
  val[0]
end

    end   # class Parser
  end   # module Arithmetic
end   # module BCDice
