#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

class TextValidator < ActiveModel::Validations::FormatValidator
  def initialize(options = {})
    regex = /\A[^\p{Zl}\p{Zp}\p{Cc}\u{10000}-\u{10FFFF}\p{Cn}]*\z/m
    super({:with => regex, :message => :komachi_validation_invalid_text_character}.merge!(options))
  end
end

