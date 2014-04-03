# NestApi
NestApi = require('../coffee/nest-api')

# Chai
chai = require('chai')

assert = chai.assert
should = chai.should()
expect = chai.expect


describe 'NestApi', (test) ->
  it "exists", ->
    NestApi.should.be.ok
    nestApi = new NestApi
    nestApi.should.be.instanceOf NestApi
