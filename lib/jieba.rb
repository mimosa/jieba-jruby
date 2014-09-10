# -*- encoding: utf-8 -*-
require 'jieba-analysis-1.0.1-SNAPSHOT'

module Jieba
  java_import com::huaban::analysis::jieba::JiebaSegmenter

  def to_tags
    words = segmenter.sentenceProcess(self).to_s[1..-2].split(", ") rescue []
    words.map{ |word| word if word.size >=2 }.uniq.compact unless words.empty?
  end

  private

    def segmenter
      @segmenter ||= JiebaSegmenter.new
    end

end # Jieba
String.send(:include, Jieba)