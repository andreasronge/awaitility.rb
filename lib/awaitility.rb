include Java
require 'awaitility/awaitility-1.3.1.jar'
require 'awaitility/cglib-nodep-2.2.jar'
require 'awaitility/hamcrest-core-1.1.jar'
require 'awaitility/hamcrest-library-1.1.jar'
require 'awaitility/objenesis-1.2.jar'

#com.jayway.awaitility.core.ConditionFactor.class_eval do
#  def until(&block)
#    Callable.new
#  end#
#
#end


module Awaitility
  def self.await(&block)
    factory = com.jayway.awaitility.Awaitility.await
    factory.until(Callable.new(block))
  end

  class Callable
    include java.util.concurrent.Callable

    def initialize(wrapper)
      @wrapper = wrapper
    end

    def call
      @wrapper.call
    end

  end
end

#include Awaitility
Awaitility.await do
  puts "HEJ HIPP"
  true
end

#await_until do
#
#end
