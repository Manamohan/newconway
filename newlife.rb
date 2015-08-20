# Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# Any live cell with two or three live neighbors lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

#______________________________________	__________________________________
# Any live cell with fewer than two live neighbors dies, as if caused by under-population.
# Any live cell with two or three live neighbors lives on to the next generation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

# puts '["1", "1","1"]'
# puts '["1", "1","--"]'
# puts '["1", "--","1"]'
$count9=0
puts "Enter the size"
n=gets.to_i
grid = Array.new(n) {
 rand(2)
 Array.new(n){
  rand(2)
  } }

puts grid.inspect

#grid = [["--", "--","--","--", "--","--"], ["--", "--","--","--", "--","--"], ["--", "--","1","1", "1","--"], ["--", "1","1","1", "--","--"], ["--", "--","--","--", "--","--"], ["--", "--","--","--", "--","--"]]
for xx in 1..999999999999999999999999999999999
  # system('clear')
   #grid1 = [["--", "--","--","--", "--","--"],["--", "--","--","--", "--","--"],["--", "--","--","--", "--","--"],["--", "--","--","--", "--","--"],["--", "--","--","--", "--","--"],["--", "--","--","--", "--","--"]]
    grid1=Array.new(n) {
    rand(1)
     Array.new(n){
      rand(1)
      }}
  row= grid.length
  col= grid[0].length
  0.upto(row-1) do |i|
   0.upto(col-1) do |j|

    $count9=0

             # _________________________________ 
             if i==row-1 && j==col-1            
              if grid[i-1][j-1]==1 
                $count9+=1
              end
              if   grid[i-1][j]==1 
                $count9+=1
              end
              
              if   grid[i][j-1]== 1
                $count9+=1
              end




              # _________j=max i=min_________________________
            elsif j==col-1 && i==0


              if    grid[i+1][j]==1 
                $count9+=1
              end
              if   grid[i+1][j-1]==1 
                $count9+=1
              end
              if   grid[i][j-1]==1 
                $count9+=1
              end
              


              # ________i=max j=min__________________________
            elsif i==row-1 && j==0


              if   grid[i-1][j]==1 
                $count9+=1
              end
              if   grid[i-1][j+1]==1 
                $count9+=1
              end
              if   grid[i][j+1]==1 
                $count9+=1
              end




              # ________i=min j=min______________________         
            elsif i==0 and j==0


              if   grid[i][j+1]==1 
                $count9+=1
              end
              if   grid[i+1][j+1]==1 
                $count9+=1
              end
              if    grid[i+1][j]==1 
                $count9+=1
              end


              # _________j=max______________________
            elsif j==col-1 && i!=row-1 && i!=0

              if   grid[i-1][j]==1 
                $count9+=1
              end
              if   grid[i-1][j-1]==1 
                $count9+=1
              end
              if   grid[i][j-1]==1 
                $count9+=1
              end
              if   grid[i+1][j-1]==1 
                $count9+=1
              end
              if    grid[i+1][j]==1
                $count9+=1
              end



              # ___i=max______________________
            elsif i==row-1 && j!=col-1 && j!=0
              if grid[i-1][j-1]==1 
                $count9+=1
              end
              if   grid[i-1][j]==1 
                $count9+=1
              end
              if   grid[i-1][j+1]==1 
                $count9+=1
              end
              if   grid[i][j+1]==1 
                $count9+=1
              end
              if   grid[i][j-1]==1 
                $count9+=1
              end

              # _____________j=min_____________________  
            elsif j==0 && i!=row-1 && i!=0
             if   grid[i-1][j]==1 
              $count9+=1
            end
            if   grid[i-1][j+1]==1 
              $count9+=1
            end
            if   grid[i][j+1]==1 
              $count9+=1
            end
            if   grid[i+1][j+1]==1 
              $count9+=1
            end
            if    grid[i+1][j]==1 
              $count9+=1
            end
                # __________i=min________________________
              elsif i==0 && j!=col-1 && j!=0
               if   grid[i][j+1]==1 
                $count9+=1
              end
              if   grid[i+1][j+1]==1 
                $count9+=1
              end
              if    grid[i+1][j]==1 
                $count9+=1
              end
              if   grid[i+1][j-1]==1 
                $count9+=1
              end
              if   grid[i][j-1]=1 
                $count9+=1
              end
                # __________________________________
              else
                if grid[i-1][j-1]==1 
                  $count9+=1
                end
                if   grid[i-1][j]==1 
                  $count9+=1
                end
                if   grid[i-1][j+1]==1 
                 $count9+=1
                end
                if   grid[i][j+1]==1 
                  $count9+=1
                end
                if   grid[i+1][j+1]==1 
                  $count9+=1
                end
                if    grid[i+1][j]==1 
                  $count9+=1
                end
                if   grid[i+1][j-1]==1 
                  $count9+=1
                end
                if   grid[i][j-1]==1 
                  $count9+=1
                end
              end
              if grid[i][j]==0
                if $count9==3
                  grid1[i][j]=1
                end
              else 
                if $count9<2 || $count9>3
                  grid1[i][j]=0
                elsif $count9==2 || $count9==3
                  grid1[i][j]=1
                end
              end

            end         
          end
          # grid1.each_index do |s|
          #   sub=grid1[s]
          #   sub.each_index do |t|
          #     puts  grid1[s][t].
          #   end
          # end
          puts "_________________________________________________________"
          for s in 0..row-1
            puts grid1[s].inspect

          end
          # system("clear")
          puts "_________________________________________________________"
          grid =grid1
          sleep (0.9)
          system("clear")
          
        end

