CREATE TABLE maimai2_game_event (
    id         BIGINT auto_increment PRIMARY KEY,
    type       INTEGER       NOT NULL,
    start_date VARCHAR (255),
    end_date   VARCHAR (255),
    enable     BOOLEAN       NOT NULL
);

CREATE TABLE maimai2_user_playlog (
    id                       BIGINT auto_increment PRIMARY KEY,
    order_id                 INTEGER,
    playlog_id               BIGINT,
    version                  INTEGER,
    place_id                 INTEGER,
    place_name               VARCHAR (255),
    login_date               BIGINT,
    play_date                VARCHAR (255),
    user_play_date           VARCHAR (255),
    type                     INTEGER,
    music_id                 INTEGER,
    level                    INTEGER,
    track_no                 INTEGER,
    vs_mode                  INTEGER,
    vs_user_name             VARCHAR (255),
    vs_status                INTEGER,
    vs_user_rating           INTEGER,
    vs_user_achievement      INTEGER,
    vs_user_grade_rank       INTEGER,
    vs_rank                  INTEGER,
    player_num               INTEGER,
    played_user_id1          BIGINT,
    played_user_name1        VARCHAR (255),
    played_music_level1      INTEGER,
    played_user_id2          BIGINT,
    played_user_name2        VARCHAR (255),
    played_music_level2      INTEGER,
    played_user_id3          BIGINT,
    played_user_name3        VARCHAR (255),
    played_music_level3      INTEGER,
    character_id1            INTEGER,
    character_level1         INTEGER,
    character_awakening1     INTEGER,
    character_id2            INTEGER,
    character_level2         INTEGER,
    character_awakening2     INTEGER,
    character_id3            INTEGER,
    character_level3         INTEGER,
    character_awakening3     INTEGER,
    character_id4            INTEGER,
    character_level4         INTEGER,
    character_awakening4     INTEGER,
    character_id5            INTEGER,
    character_level5         INTEGER,
    character_awakening5     INTEGER,
    achievement              INTEGER,
    deluxscore               INTEGER,
    score_rank               INTEGER,
    max_combo                INTEGER,
    total_combo              INTEGER,
    max_sync                 INTEGER,
    total_sync               INTEGER,
    tap_critical_perfect     INTEGER,
    tap_perfect              INTEGER,
    tap_great                INTEGER,
    tap_good                 INTEGER,
    tap_miss                 INTEGER,
    hold_critical_perfect    INTEGER,
    hold_perfect             INTEGER,
    hold_great               INTEGER,
    hold_good                INTEGER,
    hold_miss                INTEGER,
    slide_critical_perfect   INTEGER,
    slide_perfect            INTEGER,
    slide_great              INTEGER,
    slide_good               INTEGER,
    slide_miss               INTEGER,
    touch_critical_perfect   INTEGER,
    touch_perfect            INTEGER,
    touch_great              INTEGER,
    touch_good               INTEGER,
    touch_miss               INTEGER,
    break_critical_perfect   INTEGER,
    break_perfect            INTEGER,
    break_great              INTEGER,
    break_good               INTEGER,
    break_miss               INTEGER,
    is_tap                   BOOLEAN,
    is_hold                  BOOLEAN,
    is_slide                 BOOLEAN,
    is_touch                 BOOLEAN,
    is_break                 BOOLEAN,
    is_critical_disp         BOOLEAN,
    is_fast_late_disp        BOOLEAN,
    fast_count               INTEGER,
    late_count               INTEGER,
    is_achieve_new_record    BOOLEAN,
    is_deluxscore_new_record BOOLEAN,
    combo_status             INTEGER,
    sync_status              INTEGER,
    is_clear                 BOOLEAN,
    before_rating            INTEGER,
    after_rating             INTEGER,
    before_grade             INTEGER,
    after_grade              INTEGER,
    after_grade_rank         INTEGER,
    before_delux_rating      INTEGER,
    after_delux_rating       INTEGER,
    is_play_tutorial         BOOLEAN,
    is_event_mode            BOOLEAN,
    is_freedom_mode          BOOLEAN,
    play_mode                INTEGER,
    is_new_free              BOOLEAN,
    ext_num1                 INTEGER,
    ext_num2                 INTEGER,
    user_id                  BIGINT,
    constraint FKcszan6hmc7eyjp37
        foreign key (user_id) references maimai2_user_detail (id)
);
