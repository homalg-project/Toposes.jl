

julia> true
true

julia> Length( ListInstalledOperationsOfCategory( SkeletalFinSets ) )
368

julia> BooleanAlgebras = Opposite( SkeletalFinSets )
Opposite( SkeletalFinSets )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( BooleanAlgebras ) )
277

julia> Length( ListInstalledOperationsOfCategory( BooleanAlgebras ) )
293

julia> Opposite( BooleanAlgebras )
SkeletalFinSets

julia> FS = Opposite( WrapperCategory( BooleanAlgebras, @rec( ) ) )
Opposite( WrapperCategory( Opposite( SkeletalFinSets ) ) )

julia> Length( ListPrimitivelyInstalledOperationsOfCategory( FS ) )
277

julia> Length( ListInstalledOperationsOfCategory( FS ) )
305
