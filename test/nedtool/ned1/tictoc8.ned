//
// This file is part of an OMNeT++/OMNEST simulation example.
//
// Copyright (C) 2003-2005 Andras Varga
//
// This file is distributed WITHOUT ANY WARRANTY. See the file
// `license' for details on this and other legal matters.
//


simple Tic8
    gates:
        in: in;
        out: out;
endsimple

simple Toc8
    gates:
        in: in;
        out: out;
endsimple

//
// Same as Tictoc7.
//
module Tictoc8
    submodules:
        tic: Tic8;
            display: "i=block/process,cyan";
        toc: Toc8;
            display: "i=block/process,gold";
    connections:
        tic.out --> delay 100ms --> toc.in;
        tic.in <-- delay 100ms <-- toc.out;
endmodule

network tictoc8 : Tictoc8
endnetwork


