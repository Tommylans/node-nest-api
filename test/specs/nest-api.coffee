# NestApi
NestApi = require('../../lib/nest-api')

# Chai
chai = require('chai')

assert = chai.assert
should = chai.should()
expect = chai.expect


describe 'NestApi', ->
  nestApi = new NestApi

  beforeEach () ->
    nestApi = new NestApi("nest_username", "nest_password")

  describe 'NestApi Setup', ->
    it "exists", ->
      NestApi.should.be.ok
      expect(nestApi).to.be.instanceOf(NestApi)

    it "should construct a username and password", ->
      expect(nestApi.username).to.equal "nest_username"
      expect(nestApi.password).to.equal "nest_password"

    it "should set a username", ->
      nestApi.setUsername("new_nest_username")
      expect(nestApi.username).to.not.equal "nest_username"
      expect(nestApi.username).to.equal "new_nest_username"

    it "should set a password", ->
      nestApi.setPassword("new_nest_password")
      expect(nestApi.username).to.not.equal "nest_password"
      expect(nestApi.password).to.equal "new_nest_password"

  # TODO: Finish this
  describe "NestApi Login", ->
    it "is a function", ->
      expect(nestApi.login()).to.equal true
