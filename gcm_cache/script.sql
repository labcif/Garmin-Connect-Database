create table android_metadata
(
    locale TEXT
);

create table device_permission
(
    _id      integer
        primary key autoincrement,
    unit_id  text    not null,
    perm_id  integer not null,
    perm_val integer not null
);

create table devices
(
    _id                                 integer
        primary key autoincrement,
    unit_id                             integer,
    application_key                     text,
    product_nbr                         text,
    mac_address                         text,
    product_display_name                text,
    bt_friendly_name                    text,
    connection_type                     text,
    last_connected_timestamp            integer,
    software_version                    text,
    is_software_update_available        integer default 0,
    min_app_version_code_supported      integer default 99999,
    image_url                           text,
    video_url                           text,
    categories                          text,
    is_segment_capable                  integer default 0,
    garmin_device_xml                   blob,
    garmin_device_xml_id                text,
    is_connected                        integer default 0,
    sku                                 text,
    capabilities                        integer default 0,
    gble_ediv                           blob,
    gble_rand                           blob,
    gble_ltk                            blob,
    is_vivohub_configurable             integer default 0,
    sport_capabilities                  integer default 0,
    is_primary_user                     integer default 1,
    display_name                        text,
    training_video_url                  text,
    active_ind                          integer,
    part_nbr                            text,
    fitpay_user_id                      text,
    nfc_se_id                           text,
    multi_link_support                  integer default 0,
    gcj02_course_capable                integer default 0,
    activity_course_capable             integer default 0,
    nfc_capable                         integer default 0,
    solarPanelUtilizationCapable        integer default 0,
    lowHrAlertCapable                   integer default 0,
    abnormalHeartRateAlertCapable       integer default 0,
    gcmSettingsFileName                 text,
    sku_image_url                       text,
    sku_image_defaultWatchFace_url      text,
    sku_image_defaultWatchFaceBlank_url text,
    sku_image_sideProfile_url           text,
    sku_image_tutorial_url              text,
    sku_image_option1_url               text,
    sku_image_option2_url               text,
    sku_image_option3_url               text,
    spectatorMessagingCapable           integer default 0,
    trainingStatusPauseCapable          integer default 0,
    trainingStatusCapable               integer default 0,
    measurementUnitSettingCapable       integer default 0,
    powerCurveCapable                   integer default 0,
    secondaryWorkoutStepTargetCapable   integer default 0,
    assistancePlusCapable               integer default 0,
    emergencyCallingCapable             integer default 0,
    solarChargeCapable                  integer default 0,
    diveAppSyncCapable                  integer default 0,
    lastUploadToServerTimestamp         bigint  default 0,
    dayOfWeekSleepWindowCapable         integer default 0,
    primaryApp                          integer default 0
);

create table golf_course_image_data
(
    _id        integer
        primary key autoincrement,
    device_id  integer not null,
    global_id  integer not null,
    version    integer default 0,
    part_nbr   text    not null,
    image_data blob    not null,
    gma_data   blob,
    unl_data   blob,
    map_type   integer not null
);

create table golf_downloaded_course
(
    _id                           integer
        primary key autoincrement,
    android_download_id           integer,
    build_id                      integer not null,
    global_layout_id              integer not null,
    binary                        blob,
    download_mgr_status_reason_id integer,
    download_status_id            integer not null,
    saved_timestamp               integer not null,
    name                          text,
    street                        text,
    city                          text,
    state                         text,
    postal_code                   text,
    country                       text,
    semi_circle_latitude          integer not null,
    semi_circle_longitude         integer not null,
    website_url                   text,
    email                         text,
    telephone                     text,
    telephone_extension           text,
    hole_count                    integer,
    membership_type_id            integer not null,
    designer                      text,
    year_designed                 text,
    map_type                      integer default 0,
    version                       integer default 0
);

create table json
(
    _id             integer
        primary key autoincrement,
    saved_timestamp integer,
    concept_name    text not null,
    cached_val      text not null
);

create table json_activities
(
    _id             integer
        primary key autoincrement,
    saved_timestamp integer,
    concept_id      text not null,
    data_type       text not null,
    cached_val      text not null
);

create table json_courses
(
    _id             integer
        primary key autoincrement,
    saved_timestamp integer,
    concept_id      text not null,
    data_type       text not null,
    cached_val      text not null
);

create table json_myfitnesspal_calories
(
    _id             integer
        primary key autoincrement,
    saved_timestamp integer,
    start_date      text not null,
    data_type       text not null,
    cached_val      text not null
);

create table json_steps
(
    _id             integer
        primary key autoincrement,
    saved_timestamp integer,
    start_date      text not null,
    data_type       text not null,
    cached_val      text not null
);

create table orphan_devices
(
    _id                  integer
        primary key autoincrement,
    unit_id              integer not null,
    product_nbr          text    not null,
    mac_address          text    not null,
    product_display_name text,
    bt_friendly_name     text,
    image_url            text,
    part_nbr             text
);

