
# Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# Any live cell with two or three live neighbors lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

puts '["#", "#","#"]'
puts '["#", "#","."]'
puts '["#", ".","#"]'
$count9 =0
grid = [["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "#","_","_","_","_"],["_", "_","_","#","#", "#","_","_","_"],["_", "_","#","#","#", "#","#","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","#","#","#", "#","#","_","_"],["_", "_","_","#","#", "#","_","_","_"],["_", "_","_","_", "#","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"]]
for xx in 1..999999999999999999999999999999999
 # system('clear')
 grid1 = [["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"]]
 
  row= grid.length
  col= grid[0].length
  0.upto(row-1) do |i|
   0.upto(col-1) do |j|

    $count9=0

             # _________i=max, j=max ________________________ 
             if i==row-1 && j==col-1            
              if grid[i-1][j-1]=='#' 
                $count9+=1  
              end
              if   grid[i-1][j]=='#' 
                $count9+=1
              end
              
              if   grid[i][j-1]=='#' 
                $count9+=1
              end




              # _________j=max i=min_________________________
            elsif j==col-1 && i==0


              if    grid[i+1][j]=='#' 
                $count9+=1
              end
              if   grid[i+1][j-1]=='#' 
                $count9+=1
              end
              if   grid[i][j-1]=='#' 
                $count9+=1
              end
              


              # ________i=max j=min__________________________
            elsif i==row-1 && j==0


              if   grid[i-1][j]=='#' 
                $count9+=1
              end
              if   grid[i-1][j+1]=='#' 
                $count9+=1
              end
              if   grid[i][j+1]=='#' 
                $count9+=1
              end




              # ________i=min j=min______________________         
            elsif i==0 and j==0


              if   grid[i][j+1]=='#' 
                $count9+=1
              end
              if   grid[i+1][j+1]=='#' 
                $count9+=1
              end
              if    grid[i+1][j]=='#' 
                $count9+=1
              end


              # _________j=max______________________
            elsif j==col-1 && i!=row-1 && i!=0

              if   grid[i-1][j]=='#' 
                $count9+=1
              end
              if   grid[i-1][j-1]=='#' 
                $count9+=1
              end
              if   grid[i][j-1]=='#' 
                $count9+=1
              end
              if   grid[i+1][j-1]=='#' 
                $count9+=1
              end
              if    grid[i+1][j]=='#' 
                $count9+=1
              end



              # ___i=max______________________
            elsif i==row-1 && j!=col-1 && j!=0
              if grid[i-1][j-1]=='#' 
                $count9+=1
              end
              if   grid[i-1][j]=='#' 
                $count9+=1
              end
              if   grid[i-1][j+1]=='#' 
                $count9+=1
              end
              if   grid[i][j+1]=='#' 
                $count9+=1
              end
              if   grid[i][j-1]=='#' 
                $count9+=1
              end

              # _____________j=min_____________________  
            elsif j==0 && i!=row-1 && i!=0
             if   grid[i-1][j]=='#' 
              $count9+=1
            end
            if   grid[i-1][j+1]=='#' 
              $count9+=1
            end
            if   grid[i][j+1]=='#' 
              $count9+=1
            end
            if   grid[i+1][j+1]=='#' 
              $count9+=1
            end
            if    grid[i+1][j]=='#' 
              $count9+=1
            end
                # __________i=min________________________
              elsif i==0 && j!=col-1 && j!=0
               if   grid[i][j+1]=='#' 
                $count9+=1
              end
              if   grid[i+1][j+1]=='#' 
                $count9+=1
              end
              if    grid[i+1][j]=='#' 
                $count9+=1
              end
              if   grid[i+1][j-1]=='#' 
                $count9+=1
              end
              if   grid[i][j-1]=='#' 
                $count9+=1
              end
                # __________________________________
              else
                if grid[i-1][j-1]=='#' 
                  $count9+=1
                end
                if   grid[i-1][j]=='#' 
                  $count9+=1
                end
                if   grid[i-1][j+1]=='#' 
                  $count9+=1
                end
                if   grid[i][j+1]=='#' 
                  $count9+=1
                end
                if   grid[i+1][j+1]=='#' 
                  $count9+=1
                end
                if    grid[i+1][j]=='#' 
                  $count9+=1
                end
                if   grid[i+1][j-1]=='#' 
                  $count9+=1
                end
                if   grid[i][j-1]=='#' 
                  $count9+=1
                end
              end
              if grid[i][j]=='_'
                if $count9==3
                  grid1[i][j]='#'
                end
              else 
                if $count9<2 || $count9>3
                  grid1[i][j]='_'
                elsif $count9==2 || $count9==3
                  grid1[i][j]='#'
                end
              end

            end         
          end
         
          puts "_________________________________________________________"
          for s in 0..row-1
            puts grid1[s].inspect

          end
         
          puts "_________________________________________________________"
          grid =grid1
          sleep (0.9)
          system("clear")
          
        end
