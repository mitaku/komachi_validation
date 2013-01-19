#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

require 'spec_helper'

describe User do
  describe 'Validation' do
    let(:model) { User.new }
    subject { model }

    describe 'presence' do
      before { model.name = "" }
      it { should be_invalid }
    end

    describe 'text' do
      before { model.name = text }

      context "valid" do
        let(:text) { "1aAあ" }
        it { should be_valid }
      end

      context "サロゲートペア" do
        let(:text) { "\u{10000}" }
        it { should be_invalid }
      end

      context "制御文字" do
        let(:text) { 0x19.chr }
        it { should be_invalid }
      end
    end
  end
end
