function [f, bl] = ConnectedSet(I, p, q, nbr, T, xy)
   [m, n] = size(I);
    V = zeros(m, n);
    list = zeros(2, m*n);
    head  = 1;
    tail = 1;
    V(p, q) = 1;
    if(nbr == 1)
       while(head<=tail)
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p, q+1) == 0 && abs(I(p,q) - I(p, q+1))<T)
                  V(p, q+1) = 1;
                  list(1, tail) = p;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p, q-1) == 0 && abs(I(p,q) - I(p, q-1))<T)
                  V(p, q-1) = 1;
                  list(1, tail) = p;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q) == 0 && abs(I(p,q) - I(p+1, q))<T)
                  V(p+1, q) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q) == 0 && abs(I(p,q) - I(p-1, q))<T)
                  V(p-1, q) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q;
                  tail = tail + 1;
              end
          end
          p = list(1, head);
          q = list(2, head);
          head = head+1;     
       end
    end
    
    if(nbr == 2)
       while(head<=tail)
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q+1) == 0 && abs(I(p,q) - I(p+1, q+1))<T)
                  V(p+1, q+1) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q-1) == 0 && abs(I(p-1,q) - I(p, q-1))<T)
                  V(p-1, q-1) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q-1) == 0 && abs(I(p,q) - I(p+1, q-1))<T)
                  V(p+1, q-1) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q+1) == 0 && abs(I(p,q) - I(p-1, q+1))<T)
                  V(p-1, q+1) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          p = list(1, head);
          q = list(2, head);
          head = head+1;     
       end
    end
    
    if(nbr == 3)
       while(head<=tail)
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q+1) == 0 && abs(I(p,q) - I(p+1, q+1))<T)
                  V(p+1, q+1) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q-1) == 0 && abs(I(p-1,q) - I(p, q-1))<T)
                  V(p-1, q-1) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q-1) == 0 && abs(I(p,q) - I(p+1, q-1))<T)
                  V(p+1, q-1) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q+1) == 0 && abs(I(p,q) - I(p-1, q+1))<T)
                  V(p-1, q+1) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p, q+1) == 0 && abs(I(p,q) - I(p, q+1))<T)
                  V(p, q+1) = 1;
                  list(1, tail) = p;
                  list(2, tail) = q+1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p, q-1) == 0 && abs(I(p,q) - I(p, q-1))<T)
                  V(p, q-1) = 1;
                  list(1, tail) = p;
                  list(2, tail) = q-1;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p+1, q) == 0 && abs(I(p,q) - I(p+1, q))<T)
                  V(p+1, q) = 1;
                  list(1, tail) = p+1;
                  list(2, tail) = q;
                  tail = tail + 1;
              end
          end
          
          if(p>=2 && q>=2 && p<=m-1 && q<=n-1)
              if(V(p-1, q) == 0 && abs(I(p,q) - I(p-1, q))<T)
                  V(p-1, q) = 1;
                  list(1, tail) = p-1;
                  list(2, tail) = q;
                  tail = tail + 1;
              end
          end
          p = list(1, head);
          q = list(2, head);
          head = head+1;     
       end
    end
    if(xy~=0)
        imshow(V);
    end
    f = V;
    if(tail >= 100)
        bl = 1;
    end
    
    if(tail<100)
        bl = 0;
    end
end