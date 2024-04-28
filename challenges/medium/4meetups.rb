# rubocop:disable Layout/LineLength
=begin

Problem:
- Input: string
- Output: date

Explicit Rules:
- Find the date based on the given string description
- Each object will have a month, year, descriptor, & day
- Descriptors include: first, second, third, fourth, fifth, last, teenth
- Case insensitive
- Possible that the 5th day doesn't exist

Implicit Rules:
- New Meetup objects will take 2 arguments, year & month as integers
- day instance variable will take 2 string arguments, day of wk and descriptor
- Method should return date (civil format)
- Return nil if date does not exist
- Assume string arguments are valid

Data Structures:
- Meetup class
- dates
- strings

Algorithm:
- Define Meetup class
  - Define initialize method that takes 2 integer arguments representing year & month
    - Assign instance variables to year and month
  - Define day instance method that takes 2 string arguments representing day of the wk and descriptor
    - Return a new date with the year & month
    - Find all days w/in that month that occur on the given day of the wk, save in array
      - If first, return idx 0, append to newly created date
      - If second, return idx 1, append to newly created date
      - If third, return idx 2, append to newly created date
      - If fourth, return idx 3, append to newly created date
      - If fifth, return idx 4, append to newly created date (might return nil)
      - If last, return idx -1, append to newly created date
      - If teenth, return element that is b/t 13 - 19
    - Return date (or nil)

=end
# rubocop:enable Layout/LineLength

require 'date'

class Meetup
  def initialize(year, month)
    @year = year
    @month = month
    @month_count = Date.new(@year, @month, -1).day
  end

  def day(day, sched)
    @day = day
    @sched = sched
    @dates = find_all_weekdays
    find_scheduled_date
  end

  private

  def date_range
    (1..@month_count)
  end

  def find_all_weekdays
    case @day.downcase
    when 'sunday' then find_sundays
    when 'monday' then find_mondays
    when 'tuesday' then find_tuesdays
    when 'wednesday' then find_wednesdays
    when 'thursday' then find_thursdays
    when 'friday' then find_fridays
    else
      find_saturdays
    end
  end

  def find_sundays
    date_range.select { |date| Date.new(@year, @month, date).sunday? }
  end

  def find_mondays
    date_range.select { |date| Date.new(@year, @month, date).monday? }
  end

  def find_tuesdays
    date_range.select { |date| Date.new(@year, @month, date).tuesday? }
  end

  def find_wednesdays
    date_range.select { |date| Date.new(@year, @month, date).wednesday? }
  end

  def find_thursdays
    date_range.select { |date| Date.new(@year, @month, date).thursday? }
  end

  def find_fridays
    date_range.select { |date| Date.new(@year, @month, date).friday? }
  end

  def find_saturdays
    date_range.select { |date| Date.new(@year, @month, date).saturday? }
  end

  def find_scheduled_date
    case @sched.downcase
    when 'first' then find_first
    when 'second' then find_second
    when 'third' then find_third
    when 'fourth' then find_fourth
    when 'fifth' then find_fifth
    when 'last' then find_last
    else
      find_teenth
    end
  end

  def find_first
    Date.new(@year, @month, @dates[0])
  end

  def find_second
    Date.new(@year, @month, @dates[1])
  end

  def find_third
    Date.new(@year, @month, @dates[2])
  end

  def find_fourth
    Date.new(@year, @month, @dates[3])
  end

  def find_fifth
    return nil if !@dates[4]
    Date.new(@year, @month, @dates[4])
  end

  def find_last
    Date.new(@year, @month, @dates[-1])
  end

  def find_teenth
    teenth_date = @dates.select { |date| date.between?(13, 19) }
    Date.new(@year, @month, teenth_date[0])
  end
end
