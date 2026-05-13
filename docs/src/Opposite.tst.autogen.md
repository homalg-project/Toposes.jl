

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
389

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( BooleanAlgebras ) )
289

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
314

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( FS ) )
289

julia> Length( ListInstalledOperationsOfCategory( FS ) )
326
