#
# semirings: Semirings for GAP
#
# Declarations
#

#T Note that at the moment GAP's semirings are not associative,
#T and hence we're fobbing it a bit here

#! @Description
#!
DeclareCategory( "IsIdempotentSemiring", IsSemiring );

#! @Description
#!
DeclareCategory( "IsOrderedSemiring", IsSemiring );

#! @Description
#!
DeclareCategory( "IsAntiinvolutiveSemiring",
                 IsIdempotentSemiring );

DeclareCategory( "IsSemiringElement",
                 IsAdditiveElement and IsMultiplicativeElement );

DeclareCategory( "IsAntiinvolutiveSemiringElement",
                 IsSemiringElement  and IsAntiinvolutiveObject );

# A semiring conjugate on an ordered semiring is an operation such that
# * for all a SemiringConjugate(SemiringConjugate(a)) = a
# * ca < b implies SemiringConjugate(b)c < SemiringConjugate(a)
# (David Wilding's axioms)
DeclareOperation( "SemiringConjugate"
                , [ IsAntiinvolutiveSemiringElement ] );

# This will usually be defined to be SemiringConjuate(a)*a
DeclareOperation( "Residuate"
                , [ IsAntiinvolutiveSemiringElement, IsSemiringElement ] );

