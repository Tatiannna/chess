module Slideable


    def horizontal_dirs

    end

    def diagnal_dirs

    end

    def moves


    end



    private

    @HORIZONTAL_DIRS = [ [0, 1], [0, -1], [1, 0], [-1, 0]] # includes vertical!
    @DIAGNAL_DIRS = [[1,1], [-1,1], [-1, -1], [1, -1]]

    def move_dirs #overwritten by subclass
        

    end

    
    def grow_unblocked_moves_in_dir(dx,dy)

    end


end