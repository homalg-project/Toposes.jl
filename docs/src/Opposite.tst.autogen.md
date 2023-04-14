

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
287

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
254

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListInstalledOperationsOfCategory( FS ) )
254