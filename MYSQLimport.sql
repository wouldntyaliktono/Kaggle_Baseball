CREATE TABLE all_star (
    player_id TEXT,
    yearID  INTEGER,
    game_num INTEGER,
    game_id TEXT,
    team_id TEXT,
    league_id TEXT,
    gp NUMERIC,
    starting_pos NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/all_star.csv' 
INTO TABLE all_star
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE appearances (
    yearID  INTEGER,
    team_id TEXT,
    league_id TEXT,
    player_id TEXT,
    g_all NUMERIC,
    gs NUMERIC,
    g_batting INTEGER,
    g_defense NUMERIC,
    g_p INTEGER,
    g_c INTEGER,
    g_1b INTEGER,
    g_2b INTEGER,
    g_3b INTEGER,
    g_ss INTEGER,
    g_lf INTEGER,
    g_cf INTEGER,
    g_rf INTEGER,
    g_of INTEGER,
    g_dh NUMERIC,
    g_ph NUMERIC,
    g_pr NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/appearances.csv' 
INTO TABLE appearances
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE manager_award (
    player_id TEXT,
    award_id TEXT,
    yearID  INTEGER,
    league_id TEXT,
    tie TEXT,
    notes NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/manager_award.csv' 
INTO TABLE manager_award
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE player_award (
    player_id TEXT,
    award_id TEXT,
    yearID  INTEGER,
    league_id TEXT,
    tie TEXT,
    notes TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/player_award.csv' 
INTO TABLE player_award
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE manager_award_vote (
    award_id TEXT,
    yearID  INTEGER,
    league_id TEXT,
    player_id TEXT,
    points_won INTEGER,
    points_max INTEGER,
    votes_first INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/manager_award_vote.csv' 
INTO TABLE manager_award_vote
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE player_award_vote (
    award_id TEXT,
    yearID  INTEGER,
    league_id TEXT,
    player_id TEXT,
    points_won NUMERIC,
    points_max INTEGER,
    votes_first NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/player_award_vote.csv' 
INTO TABLE player_award_vote
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE batting (
    player_id TEXT,
    yearID  INTEGER,
    stint INTEGER,
    team_id TEXT,
    league_id TEXT,
    g INTEGER,
    ab NUMERIC,
    r NUMERIC,
    h NUMERIC,
    doubles NUMERIC,
    triple NUMERIC,
    hr NUMERIC,
    rbi NUMERIC,
    sb NUMERIC,
    cs NUMERIC,
    bb NUMERIC,
    so NUMERIC,
    ibb NUMERIC,
    hbp NUMERIC,
    sh NUMERIC,
    sf NUMERIC,
    g_idp NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/batting.csv' 
INTO TABLE batting
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE batting_postseason (
    yearID  INTEGER,
    round TEXT,
    player_id TEXT,
    team_id TEXT,
    league_id TEXT,
    g INTEGER,
    ab INTEGER,
    r INTEGER,
    h INTEGER,
    doubles INTEGER,
    triple INTEGER,
    hr INTEGER,
    rbi INTEGER,
    sb INTEGER,
    cs NUMERIC,
    bb INTEGER,
    so INTEGER,
    ibb NUMERIC,
    hbp NUMERIC,
    sh NUMERIC,
    sf NUMERIC,
    g_idp NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/batting_postseason.csv' 
INTO TABLE batting_postseason
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE player_college (
    player_id TEXT,
    college_id TEXT,
    yearID  INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/player_college.csv' 
INTO TABLE player_college
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE fielding (
    player_id TEXT,
    yearID  INTEGER,
    stint INTEGER,
    team_id TEXT,
    league_id TEXT,
    pos TEXT,
    g INTEGER,
    gs NUMERIC,
    inn_outs NUMERIC,
    po NUMERIC,
    a NUMERIC,
    e NUMERIC,
    dp NUMERIC,
    pb NUMERIC,
    wp NUMERIC,
    sb NUMERIC,
    cs NUMERIC,
    zr NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/fielding.csv' 
INTO TABLE fielding
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE fielding_outfield (
    player_id TEXT,
    yearID  INTEGER,
    stint INTEGER,
    glf NUMERIC,
    gcf NUMERIC,
    grf NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/fielding_outfield.csv' 
INTO TABLE fielding_outfield
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE fielding_postseason (
    player_id TEXT,
    yearID  INTEGER,
    team_id TEXT,
    league_id TEXT,
    round TEXT,
    pos TEXT,
    g INTEGER,
    gs NUMERIC,
    inn_outs NUMERIC,
    po INTEGER,
    a INTEGER,
    e INTEGER,
    dp INTEGER,
    tp INTEGER,
    pb NUMERIC,
    sb NUMERIC,
    cs NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/fielding_postseason.csv' 
INTO TABLE fielding_postseason
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE hall_of_fame (
    player_id TEXT,
    yearid INTEGER,
    votedby TEXT,
    ballots NUMERIC,
    needed NUMERIC,
    votes NUMERIC,
    inducted TEXT,
    category TEXT,
    needed_note TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/hall_of_fame.csv' 
INTO TABLE hall_of_fame
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE home_game (
    yearID  INTEGER,
    league_id TEXT,
    team_id TEXT,
    park_id TEXT,
    span_first TEXT,
    span_last TEXT,
    games INTEGER,
    openings INTEGER,
    attendance INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/home_game.csv' 
INTO TABLE home_game
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE manager (
    player_id TEXT,
    yearID  INTEGER,
    team_id TEXT,
    league_id TEXT,
    inseason INTEGER,
    g INTEGER,
    w INTEGER,
    l INTEGER,
    rank NUMERIC,
    plyr_mgr TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/manager.csv' 
INTO TABLE manager
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE manager_half (
    player_id TEXT,
    yearID  INTEGER,
    team_id TEXT,
    league_id TEXT,
    inseason INTEGER,
    half INTEGER,
    g INTEGER,
    w INTEGER,
    l INTEGER,
    rank INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/manager_half.csv' 
INTO TABLE manager_half
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE player (
    player_id TEXT,
    birth_yearID  NUMERIC,
    birth_month NUMERIC,
    birth_day NUMERIC,
    birth_country TEXT,
    birth_state TEXT,
    birth_city TEXT,
    death_yearID  NUMERIC,
    death_month NUMERIC,
    death_day NUMERIC,
    death_country TEXT,
    death_state TEXT,
    death_city TEXT,
    name_first TEXT,
    name_last TEXT,
    name_given TEXT,
    weight NUMERIC,
    height NUMERIC,
    bats TEXT,
    throws TEXT,
    debut TEXT,
    final_game TEXT,
    retro_id TEXT,
    bbref_id TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/player.csv' 
INTO TABLE player
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE park (
    park_id TEXT,
    park_name TEXT,
    park_alias TEXT,
    city TEXT,
    state TEXT,
    country TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/park.csv' 
INTO TABLE park
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE pitching (
    player_id TEXT,
    yearID  INTEGER,
    stint INTEGER,
    team_id TEXT,
    league_id TEXT,
    w INTEGER,
    l INTEGER,
    g INTEGER,
    gs INTEGER,
    cg INTEGER,
    sho INTEGER,
    sv INTEGER,
    ipouts NUMERIC,
    h INTEGER,
    er INTEGER,
    hr INTEGER,
    bb INTEGER,
    so INTEGER,
    baopp NUMERIC,
    era NUMERIC,
    ibb NUMERIC,
    wp NUMERIC,
    hbp NUMERIC,
    bk INTEGER,
    bfp NUMERIC,
    gf NUMERIC,
    r INTEGER,
    sh NUMERIC,
    sf NUMERIC,
    g_idp NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/pitching.csv' 
INTO TABLE pitching
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE pitching_postseason (
    player_id TEXT,
    yearID  INTEGER,
    round TEXT,
    team_id TEXT,
    league_id TEXT,
    w INTEGER,
    l INTEGER,
    g INTEGER,
    gs INTEGER,
    cg INTEGER,
    sho INTEGER,
    sv INTEGER,
    ipouts INTEGER,
    h INTEGER,
    er INTEGER,
    hr INTEGER,
    bb INTEGER,
    so INTEGER,
    baopp TEXT,
    era NUMERIC,
    ibb NUMERIC,
    wp NUMERIC,
    hbp NUMERIC,
    bk NUMERIC,
    bfp NUMERIC,
    gf INTEGER,
    r INTEGER,
    sh NUMERIC,
    sf NUMERIC,
    g_idp NUMERIC);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/pitching_postseason.csv' 
INTO TABLE pitching_postseason
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE salary (
    yearID  INTEGER,
    team_id TEXT,
    league_id TEXT,
    player_id TEXT,
    salary INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/salary.csv' 
INTO TABLE salary
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE college (
    college_id TEXT,
    name_full TEXT,
    city TEXT,
    state TEXT,
    country TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/college.csv' 
INTO TABLE college
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE postseason (
    yearID  INTEGER,
    round TEXT,
    team_id_winner TEXT,
    league_id_winner TEXT,
    team_id_loser TEXT,
    league_id_loser TEXT,
    wins INTEGER,
    losses INTEGER,
    ties INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/postseason.csv' 
INTO TABLE postseason
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE team (
    yearID  INTEGER,
    league_id TEXT,
    team_id TEXT,
    franchise_id TEXT,
    div_id TEXT,
    rank INTEGER,
    g INTEGER,
    ghome NUMERIC,
    w INTEGER,
    l INTEGER,
    div_win TEXT,
    wc_win TEXT,
    lg_win TEXT,
    ws_win TEXT,
    r INTEGER,
    ab INTEGER,
    h INTEGER,
    doubles INTEGER,
    triple INTEGER,
    hr INTEGER,
    bb INTEGER,
    so NUMERIC,
    sb NUMERIC,
    cs NUMERIC,
    hbp NUMERIC,
    sf NUMERIC,
    ra INTEGER,
    er INTEGER,
    era NUMERIC,
    cg INTEGER,
    sho INTEGER,
    sv INTEGER,
    ipouts INTEGER,
    ha INTEGER,
    hra INTEGER,
    bba INTEGER,
    soa INTEGER,
    e INTEGER,
    dp NUMERIC,
    fp NUMERIC,
    name TEXT,
    park TEXT,
    attendance NUMERIC,
    bpf INTEGER,
    ppf INTEGER,
    team_id_br TEXT,
    team_id_lahman45 TEXT,
    team_id_retro TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/team.csv' 
INTO TABLE team
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE team_franchise (
    franchise_id TEXT,
    franchise_name TEXT,
    active TEXT,
    na_assoc TEXT);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/team_franchise.csv' 
INTO TABLE team_franchise
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

CREATE TABLE team_half (
    yearID  INTEGER,
    league_id TEXT,
    team_id TEXT,
    half INTEGER,
    div_id TEXT,
    div_win TEXT,
    rank INTEGER,
    g INTEGER,
    w INTEGER,
    l INTEGER);
LOAD DATA LOCAL INFILE '/Users/MTOConnor/Documents/Github/Rstat/kaggle/Baseball/data/team_half.csv' 
INTO TABLE team_half
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;
