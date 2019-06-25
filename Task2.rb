#Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.
def makeIndent(r, i,indent = 25)
  (' ' * indent + ' ' *  (r*2 - (i)*2))
end
def makeIndent2(r, i,indent = 25)
  (' ' * indent + ' ' * (i*2 - r*2))
end
def drawCircle(r = 5, indent = 25)
  horisontalSpaces = r * 4 # r*2*2
  (1..r*2 + 1).each do |i|
    if i == 1 || i == r*2 + 1
      # puts('* * *'.rjust(indent, ' '))
      # makeIndent(r*2+1)
      if i < r
        puts(makeIndent(r, i-1, indent) + '* * *')
      else
        puts(makeIndent2(r, i-1, indent) + '* * *')
      end
    elsif i == r + 1
      # puts( ('**' + ' '*r*4 + '**').rjust(indent, ' '))
      # puts i, r
      puts( makeIndent(0, 0, indent) + ' **' + ' '*r*4 + '**')
    elsif i <= r
      # puts( ('*' + ' '*i*4 + '*').ljust(indent, ' ') )

      puts(makeIndent(r, i-1, indent) + '*' + ' '*(i)*4 + '*')
    else
      # puts (makeIndent(r, (i-(i%r)), indent) + '*' + ' '*((i-i%r)+1)*4 + '*')
      puts(makeIndent2(r, i-1, indent) + '*' + ' '*horisontalSpaces + '*')
      horisontalSpaces -= 4
    end
  end
end

return drawCircle(4, 50)

=begin


                  |          * * *
                  |       *        *
                  |     *            *
                  |   *                *
                  | *                    *
                  |**                    **
                  | *                    *
                  |   *                *
                  |     *            *
                  |       *        *
                  |          * * *

                             *  *
                           *      *
                         *         *
                        *           *
                       *             *
                      *               *
                     **               **
                      *               *
                       *             *
                        *           *
                         *         *
                           *      *
                             *  *



                             * * *
                          *    |    *
                        *      |      *
                      *        |        *
                    *          |          *
                   *           |           *
                    *          |          *
                      *        |        *
                        *      |      *
                          *    |    *
                             * * *

                          -
                        /   \
                      /       \
                    /           \
                  /               \
                 (                 )
                  \               /
                    \           /
                      \       /
                        \   /
                          -




                             * *
                           * * * *
                        *          *
                       *            *
                     *                *
                    *                  *
                   **                  **
                    *                  *
                      *               *
                        *           *
                         *         *
                           *      *
                             *  *
=end