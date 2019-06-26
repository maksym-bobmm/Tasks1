#Нарисовать в консоле круг, диаметр\радиус которого задается с консоли.
class Task2
  def make_left_spaces(r, line_number, indent = 25)
    if line_number < r
      (' ' * indent + ' ' *  (r*2 - (line_number)*2))
    else
      (' ' * indent + ' ' * (line_number*2 - r*2))
    end
  end

  def drawCircle(r = 5, indent = 25)
    internal_spaces = r * 4 # r*2*2
    (1..r * 2 + 1).each do |line_number|
      if line_number == 1 || line_number == r*2 + 1  # top and bottom line of the circle
          puts(make_left_spaces(r, line_number-1, indent) + '* * *')
      elsif line_number == r + 1  #middle line of the circle
        puts( make_left_spaces(0, 0, indent) + ' **' + ' '*r*4 + '**')
      elsif line_number <= r    #top half lines of the circle
        puts(make_left_spaces(r, line_number-1, indent) + '*' + ' ' * (line_number) * 4 + '*')
      else      # bottom half lines of the circle
        puts(make_left_spaces(r, line_number-1, indent) + '*' + ' ' * internal_spaces + '*')
        internal_spaces -= 4
      end
    end
  end

  def initialize(radius = 5, indent = 50)
    drawCircle(radius, indent)
  end
end

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