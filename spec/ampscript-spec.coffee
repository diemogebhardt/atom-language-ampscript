describe 'AMPscript grammar', ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-ampscript')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.ampscript')

  it 'parses the grammar', ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.ampscript'
