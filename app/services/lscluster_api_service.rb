class LsclusterApiService
  include HTTParty
  base_uri 'https://lscluster.hockeytech.com/feed/'
  
  def initialize
    @key = ENV['LSCLUSTER_API_KEY']
    puts @key
    @default_params = {
      client_code: 'whl',
      fmt: 'json', 
      lang_code: 'en',
      key: @key,
    }


  end

  def game_id_url(num_of_days_ahead, num_of_past_games, current_team_id = '')

    response = HTTParty.get("https://lscluster.hockeytech.com/feed/?feed=modulekit&key=#{@key}&view=scorebar&client_code=whl&numberofdaysahead=#{num_of_days_ahead}&numberofdaysback=#{num_of_past_games}&season_id=&team_id=#{current_team_id}&lang_code=en&fmt=json")
    
    puts response.body

    # query = @default_params.merge( {
    #   feed: 'modulekit',
    #   view: 'scorebar',
    #   numberofdaysahead: num_of_days_ahead,
    #   numberofdaysback: num_of_past_games,
    #   season_id: '',
    #   team_id: current_team_id
    # })

    # self.class.get('', query: query)
  end

  def get_game_stats_url(game_id)
    query = @default_params.merge( {
      feed: 'gc', 
      game_id: game_id,
      tab: 'clock'
    })

    self.class.get('', query: query)
  end
end