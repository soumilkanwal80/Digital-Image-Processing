run('./BLPF.m');
pause(3);
run('./GLPF.m');
pause(3);
run('./GHPF.m');
pause(3);
run('./BHPF.m');
pause(3);
close all;

fprintf( 'The resultant image for BHPF is much sharper than GHPF for same order. The split edges are elongated and wider in BHPF case than GHPF. But in GHPF case the split edges are sharper. These elongated split edges in BHPF leads to sharper image than GHPF. Reverse is true for GLPF and BLPF');