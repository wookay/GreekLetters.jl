module test_greekletters_tex

using Test
using REPL.REPLCompletions: latex_symbols
using GreekLetters

for (sym, name) in pairs(GreekLetters.alphabet)
    @test String(sym) == latex_symbols[string("\\", name)]
end

@test tex('ξ') == "\\xi"

end # module test_greekletters_tex
