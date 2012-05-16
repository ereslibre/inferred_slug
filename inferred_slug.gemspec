# encoding: UTF-8

# Copyright (c) 2012 Rafael Fernández López <ereslibre@ereslibre.es>
#
# Permission is hereby granted, free of charge, to any
# person obtaining a copy of this software and associated
# documentation files (the "Software"), to deal in the
# Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the
# Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice
# shall be included in all copies or substantial portions of
# the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
# OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'inferred_slug/version'

Gem::Specification.new do |s|
  s.name        = 'inferred_slug'
  s.version     = InferredSlug::VERSION
  s.summary     = 'Library for adding slugs on your Rails application'
  s.description = 'Library for easily adding slugs on your Rails application without the need of database storage'
  s.authors     = ['Rafael Fernández López']
  s.email       = 'ereslibre@ereslibre.es'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'http://www.ereslibre.es/'

  s.add_dependency('stringex')
end
