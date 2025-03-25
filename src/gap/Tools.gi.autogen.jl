# SPDX-License-Identifier: GPL-2.0-or-later
# Toposes: Elementary toposes
#
# Implementations
#

#= comment for Julia
if (IsPackageMarkedForLoading( "Digraphs", ">= 1.3.1" ))

##
@InstallMethod( DigraphOfSubobjects,
        [ IsCapCategoryObject ],
        
  function( A )
    local subobjects, D;
    
    subobjects = ListOfSubobjects( A );
    
    D = Digraph( (1):(Length( subobjects )),
                 ( i, j ) -> IsDominating( subobjects[i], subobjects[j] ) );
    
    D = DigraphReflexiveTransitiveReduction( D );
    
    SetFilterObj( D, IsDigraphOfSubobjects );
    
    return D;
    
end );

##
@InstallMethod( DotVertexLabelledDigraph,
        "for a digraph of subobjects",
        [ IsDigraphByOutNeighboursRep && IsDigraphOfSubobjects ],
        
  function( D )
    local out, str, i, j;
    
    # Copied from DotVertexLabeledDigraph() at Digraphs/gap/display.gi
    out   = OutNeighbours( D );
    str   = "//dot\n";
    
    Append( str, "digraph subobject_lattice[\n" );
    Append( str, "rankdir=\"BT\"\n" );
    Append( str, "minlen=0\n" );
    Append( str, "node [shape=circle width=0 height=0 fontsize=12 margin=0.01 fontname=\"DejaVu Serif,serif\"]\n" );
    Append( str, "edge [arrowsize=0.5]\n" );
    
    for i in DigraphVertices( D )
        Append( str, StringGAP( i ) );
        Append( str, " [label=\"" );
        Append( str, StringGAP( DigraphVertexLabel( D, i ) ) );
        Append( str, "\"]\n" );
    end;
    
    for i in DigraphVertices( D )
        for j in out[i]
            Append( str, @Concatenation( StringGAP( i ), " -> ", StringGAP( j ), "\n" ) );
        end;
    end;
    
    Append( str, "]\n" );
    
    return str;
    
end );

MakeShowable( [ "image/svg+xml" ], IsDigraphByOutNeighboursRep && IsDigraphOfSubobjects );

##
@InstallMethod( SvgString,
        "for a digraph of subobjects",
        [ IsDigraphByOutNeighboursRep && IsDigraphOfSubobjects ],
        
  function( D )
    
    return DotToSVG( DotVertexLabelledDigraph( D ) );
    
end );

end;
# =#
