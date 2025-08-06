using Test, Documenter, FinSetsForCAP, Toposes

# test upto whitespaces
doctest(Toposes; doctestfilters=[r"\s+" => ""])
