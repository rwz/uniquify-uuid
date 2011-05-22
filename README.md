# Uniquify

This gem helps to generate unique tokens for ActiveRecord models. It uses UUID as default token algorithm.

## Install

Add gem to your Gemfile:

    gem 'uniquify-uuid'

then bo bundle:

    $ bundle install

## Usage

Let’s say you have a Project model with a 'token' string column that you want to be a unique identifier. Just add this to your model.

    class Project < ActiveRecord::Base
      uniquify :token
    end

This will generate a random and unique UUID string before each project is created.

You can specify multiple columns like this.

    uniquify :token, :salt

You can also pass a block to generate your own random token.

    uniquify :token do
      rand(99999)
    end

If the generated value already exists, the block will be run again until the value is unique.


## License
Copyright © 2008 Ryan Bates

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.