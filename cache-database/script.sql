create table acclimation_pulse_ox_details
(
    userProfilePk                    TEXT    not null,
    startTimestampLocal              TEXT,
    startTimestampGMT                TEXT,
    endTimestampGMT                  TEXT,
    endTimestampLocal                TEXT,
    spo2Value                        INTEGER,
    spo2ValueAverage                 INTEGER,
    spo2ValuesArray                  TEXT,
    latestSpo2ValueReadingTimeGmt    TEXT,
    monitoringEnvironmentValuesArray TEXT,
    date                             INTEGER not null,
    primary key (userProfilePk, date)
);

create table activity_chart_data
(
    activityId   INTEGER not null,
    chartType    TEXT    not null,
    lastUpdated  INTEGER not null,
    calendarDate TEXT,
    chartXList   TEXT,
    chartYList   TEXT,
    primary key (activityId, chartType)
);

create table activity_details
(
    activityId                            INTEGER not null
        primary key,
    lastUpdated                           INTEGER not null,
    calendarDate                          TEXT,
    activityName                          TEXT,
    description                           TEXT,
    startTimeGMT                          TEXT,
    startTimeLocal                        TEXT,
    activityTypeId                        INTEGER not null,
    activityTypeKey                       TEXT,
    parentActivityTypeId                  INTEGER not null,
    activityTypeCategory                  TEXT,
    eventTypeId                           INTEGER not null,
    eventTypeKey                          TEXT,
    distance                              REAL    not null,
    duration                              REAL    not null,
    movingDuration                        REAL    not null,
    elapsedDuration                       REAL    not null,
    elevationGain                         REAL    not null,
    elevationLoss                         REAL    not null,
    averageSpeed                          REAL    not null,
    maxSpeed                              REAL    not null,
    startLatitude                         REAL,
    startLongitude                        REAL,
    ownerId                               INTEGER not null,
    ownerDisplayName                      TEXT,
    ownerFullName                         TEXT,
    ownerProfileImageUrlSmall             TEXT,
    ownerProfileImageUrlMedium            TEXT,
    ownerProfileImageUrlLarge             TEXT,
    calories                              REAL    not null,
    averageHR                             REAL    not null,
    maxHR                                 REAL    not null,
    averageRunningCadenceInStepsPerMinute REAL    not null,
    maxRunningCadenceInStepsPerMinute     REAL    not null,
    averageBikingCadenceInRevPerMinute    REAL    not null,
    maxBikingCadenceInRevPerMinute        REAL    not null,
    averageSwimCadenceInStrokesPerMinute  REAL    not null,
    minSwimCadenceInStrokesPerMinute      REAL    not null,
    averageSwolf                          REAL    not null,
    activeLengths                         INTEGER not null,
    steps                                 INTEGER not null,
    conversationUuid                      TEXT,
    conversationPk                        INTEGER not null,
    numberOfActivityLikes                 INTEGER not null,
    numberOfActivityComments              INTEGER not null,
    likedByUser                           INTEGER not null,
    privacy                               TEXT,
    courseId                              INTEGER not null,
    hasVideo                              INTEGER not null,
    videoUrl                              TEXT,
    timeZoneId                            INTEGER not null,
    beginTimestamp                        INTEGER not null,
    sportTypeId                           INTEGER not null,
    avgPower                              REAL    not null,
    maxPower                              REAL    not null,
    aerobicTrainingEffect                 REAL    not null,
    strokes                               REAL    not null,
    minSwolf                              REAL    not null,
    avgEfficiency                         REAL    not null,
    minEfficiency                         REAL    not null,
    normPower                             REAL    not null,
    leftBalance                           REAL    not null,
    rightBalance                          REAL    not null,
    max20MinPower                         REAL    not null,
    avgVerticalOscillation                REAL    not null,
    avgGroundContactTime                  REAL    not null,
    avgStrideLength                       REAL    not null,
    avgFractionalCadence                  REAL    not null,
    maxFractionalCadence                  REAL    not null,
    trainingStressScore                   REAL    not null,
    intensityFactor                       REAL    not null,
    v02MaxValue                           REAL    not null,
    avgVerticalRatio                      REAL    not null,
    avgGroundContactBalance               REAL    not null,
    avgLactateThresholdBpm                REAL    not null,
    avgLactateThresholdSpeed              REAL    not null,
    maxFtp                                REAL    not null,
    avgStrokeDistance                     REAL    not null,
    avgStrokeCadence                      REAL    not null,
    maxStrokeCadence                      REAL    not null,
    parent                                INTEGER not null,
    parentId                              INTEGER not null,
    userPro                               INTEGER not null,
    favorite                              INTEGER not null,
    pr                                    INTEGER not null,
    unitId                                INTEGER not null,
    unitKey                               TEXT,
    factor                                REAL    not null,
    encodedPolyline                       TEXT,
    lapCount                              INTEGER not null,
    maxDepth                              REAL    not null,
    decoDive                              INTEGER not null,
    divingGas                             TEXT,
    divingWaterType                       INTEGER not null,
    divingWaterDensity                    REAL    not null,
    activityBottomTime                    REAL    not null,
    surfaceInterval                       REAL    not null,
    totalSurfaceInterval                  REAL    not null,
    maxBottomTime                         REAL    not null,
    workoutTime                           INTEGER not null,
    floorsClimbed                         INTEGER not null,
    avgVerticalSpeed                      REAL    not null,
    scoreType                             TEXT,
    scoreWithoutHandicap                  INTEGER not null,
    holesCompleted                        INTEGER not null,
    mainLeaderboardRank                   TEXT,
    typeScore                             INTEGER not null,
    workoutId                             INTEGER,
    bestLapTime                           INTEGER not null,
    avgRespirationRate                    REAL    not null,
    totalSets                             INTEGER not null,
    activeSets                            INTEGER not null,
    climbRoutes                           INTEGER not null,
    activeSplitTime                       REAL    not null,
    maxDiffKey                            TEXT,
    totalAscent                           REAL    not null,
    waveCount                             INTEGER not null,
    longestWaveDistance                   REAL    not null,
    avgStress                             REAL,
    climbMode                             TEXT
);

create table activity_polyline
(
    activityId     INTEGER
        primary key,
    numberOfPoints INTEGER,
    encodedSamples TEXT,
    encodedLevels  TEXT,
    maxLat         REAL,
    maxLon         REAL,
    minLat         REAL,
    minLon         REAL,
    startLat       REAL,
    startLon       REAL,
    endLat         REAL,
    endLon         REAL
);

create table activity_summaries
(
    activityId   INTEGER not null
        primary key,
    displayName  TEXT,
    startTimeGMT INTEGER not null,
    json         TEXT,
    lastUpdate   INTEGER not null
);

create table android_metadata
(
    locale TEXT
);

create table atp_activity_grades
(
    activityId      INTEGER not null
        primary key,
    calendarDate    TEXT,
    lastUpdated     INTEGER not null,
    rating          TEXT,
    localizedRating TEXT
);

create table blood_pressure
(
    version                   INTEGER not null
        primary key,
    systolic                  REAL,
    diastolic                 REAL,
    pulse                     REAL,
    multiMeasurement          INTEGER,
    notes                     TEXT,
    sourceType                TEXT,
    measurementTimestampLocal TEXT,
    measurementTimestampGmt   TEXT,
    category                  TEXT,
    lastUpdated               INTEGER not null,
    dateInMillis              INTEGER
);

create table blood_pressure_stats
(
    timestampGMT             INTEGER not null
        primary key,
    totalMeasurementCount    INTEGER not null,
    elevatedMeasurementCount INTEGER not null,
    lastUpdated              INTEGER not null
);

create table device_work_input
(
    inputTimestamp      INTEGER not null
        primary key,
    inputAction         TEXT    not null,
    unitId              INTEGER not null,
    remoteDeviceProfile TEXT    not null,
    deviceXML           BLOB
);

create table ecg_recordings
(
    detailId                TEXT    not null
        primary key,
    startTime               INTEGER not null,
    startTimeLocal          TEXT    not null,
    timeZoneOffsetInSeconds INTEGER,
    rhythmClassification    TEXT,
    mountingSide            TEXT,
    rmssdHrv                REAL,
    heartRateAverage        REAL,
    ecgAppVersion           TEXT,
    udi                     TEXT,
    symptoms                TEXT,
    productName             TEXT,
    productId               TEXT,
    firmwareVersion         TEXT,
    partNumber              TEXT,
    lastUpdated             INTEGER not null
);

create table heartrate_zones
(
    sport            TEXT    not null
        primary key,
    lastUpdated      INTEGER not null,
    restingHeartRate INTEGER not null,
    zone0Ceiling     INTEGER not null,
    zone1Ceiling     INTEGER not null,
    zone2Ceiling     INTEGER not null,
    zone3Ceiling     INTEGER not null,
    zone4Ceiling     INTEGER not null,
    zone5Ceiling     INTEGER not null,
    custom           INTEGER not null
);

create table hrv_status
(
    calendarDate      TEXT    not null
        primary key,
    weeklyAvg         INTEGER,
    lastNightAvg      INTEGER,
    lastNight5MinHigh INTEGER,
    baseline          TEXT,
    status            TEXT,
    feedbackPhrase    TEXT,
    createTimeStamp   TEXT,
    lastUpdated       INTEGER not null
);

create table insights
(
    status             TEXT,
    featureId          INTEGER not null,
    category           TEXT,
    createdDateUTC     INTEGER not null,
    expirationDateUTC  INTEGER not null,
    createdDateCentral TEXT,
    title              TEXT,
    notification       TEXT,
    cardImageURL       TEXT,
    primary key (featureId, createdDateUTC)
);

create table intensity_minutes
(
    startOfWeekDate          TEXT    not null
        primary key,
    lastUpdated              INTEGER not null,
    moderateIntensityMinutes INTEGER not null,
    vigorousIntensityMinutes INTEGER not null,
    intensityMinutesGoal     INTEGER not null
);

create table jet_lag_status
(
    dailyStatusId          INTEGER
        primary key,
    tripId                 INTEGER,
    tripStartDate          TEXT,
    tripEndDate            TEXT,
    calendarDate           TEXT,
    bodyClockDifference    INTEGER,
    bodyClockShiftFeedback TEXT,
    bodyClockFeedback      TEXT,
    severity               INTEGER,
    severityFeedback       TEXT,
    severityPercentage     INTEGER,
    travelDirection        TEXT,
    suggestions            TEXT    not null,
    currentLocation        TEXT,
    currentTimezone        TEXT,
    userTimezoneOffset     INTEGER,
    flights                TEXT    not null,
    lastUpdated            INTEGER not null
);

create table menstrual_cycle_summary
(
    dataDate              TEXT,
    startDate             TEXT not null
        primary key,
    cycleDay              INTEGER,
    periodLength          INTEGER,
    currentPhase          INTEGER,
    currentPhaseLength    INTEGER,
    daysUntilNextPhase    INTEGER,
    fertileWindowStartDay INTEGER,
    fertileWindowLength   INTEGER,
    predictedCycleLength  INTEGER,
    educationContentMod   INTEGER,
    lutealPhaseStart      INTEGER,
    pregnancyCycle        INTEGER,
    numberOfWeek          INTEGER,
    dueDate               TEXT,
    deliveryDate          TEXT,
    endDate               TEXT,
    overlapCycleList      TEXT,
    cycleType             TEXT,
    predictedCycle        INTEGER
);

create unique index index_menstrual_cycle_summary_dataDate
    on menstrual_cycle_summary (dataDate);

create table response_cache
(
    requestUrl TEXT    not null
        primary key,
    response   TEXT,
    lastUpdate INTEGER not null,
    maxAge     INTEGER not null,
    maxStale   INTEGER not null
);

create table room_master_table
(
    id            INTEGER
        primary key,
    identity_hash TEXT
);

create table sleep_detail
(
    calendarDate                 TEXT    not null
        primary key,
    lastUpdated                  INTEGER not null,
    sleepTimeInSeconds           INTEGER not null,
    napTimeInSeconds             INTEGER not null,
    sleepWindowConfirmationType  TEXT,
    sleepWindowConfirmed         INTEGER not null,
    sleepStartTimeGMT            INTEGER not null,
    sleepEndTimeGMT              INTEGER not null,
    autoSleepStartTimeGMT        INTEGER not null,
    autoSleepEndTimeGMT          INTEGER not null,
    deepSleepSeconds             INTEGER not null,
    lightSleepSeconds            INTEGER not null,
    remSleepSeconds              INTEGER not null,
    awakeSleepSeconds            INTEGER not null,
    deviceRemCapable             INTEGER not null,
    averageSpO2Value             INTEGER not null,
    lowestSpO2Value              INTEGER not null,
    numberOfEventsBelowThreshold INTEGER not null,
    averageSpO2HRSleep           INTEGER not null,
    spo2Threshold                INTEGER not null,
    averageRespirationValue      REAL    not null,
    lowestRespirationValue       REAL    not null,
    highestRespirationValue      REAL    not null,
    sleepFromDevice              INTEGER not null,
    sleepScore                   INTEGER
);

create table stats
(
    samplePk       INTEGER not null
        primary key,
    startDate      INTEGER not null,
    endDate        INTEGER not null,
    weight         REAL    not null,
    bmi            REAL    not null,
    bodyFat        REAL    not null,
    bodyWater      REAL    not null,
    boneMass       INTEGER not null,
    muscleMass     INTEGER not null,
    physiqueRating INTEGER not null,
    visceralFat    INTEGER not null,
    metabolicAge   INTEGER not null,
    lastUpdated    INTEGER not null
);

create table training_readiness
(
    calendarDate  TEXT    not null
        primary key,
    deviceId      INTEGER,
    feedbackShort TEXT,
    level         TEXT,
    score         REAL,
    timestamp     TEXT,
    userProfilePK INTEGER,
    validSleep    INTEGER,
    lastUpdated   INTEGER not null
);

create table training_status
(
    userId                        INTEGER not null
        primary key,
    trainingStatus                INTEGER not null,
    trainingBalanceFeedbackPhrase TEXT,
    hasValidTrainingStatus        INTEGER not null,
    vo2MaxValue                   INTEGER not null,
    vo2MaxFitnessTrend            INTEGER not null,
    weeklyTrainingLoad            INTEGER not null,
    loadLevelTrend                INTEGER not null,
    heatAcclimation               INTEGER not null,
    altitudeAcclimation           REAL    not null,
    deviceCount                   INTEGER not null,
    deviceId                      INTEGER not null,
    deviceName                    TEXT,
    deviceImageUrl                TEXT,
    lastUpdated                   INTEGER not null
);

create unique index index_training_status_userId
    on training_status (userId);

create table user_daily_summary
(
    calendarDate                     TEXT    not null
        primary key,
    lastUpdated                      INTEGER not null,
    displayName                      TEXT,
    totalKilocalories                INTEGER not null,
    activeKilocalories               INTEGER not null,
    bmrKilocalories                  INTEGER not null,
    wellnessKilocalories             INTEGER not null,
    wellnessActiveKilocalories       INTEGER not null,
    burnedKilocalories               INTEGER not null,
    consumedKilocalories             INTEGER not null,
    remainingKilocalories            INTEGER not null,
    netCalorieGoal                   INTEGER not null,
    netRemainingKilocalories         INTEGER not null,
    totalSteps                       INTEGER not null,
    dailyStepGoal                    INTEGER not null,
    totalDistanceMeters              INTEGER not null,
    wellnessDistanceMeters           INTEGER not null,
    highlyActiveSeconds              INTEGER not null,
    activeSeconds                    INTEGER not null,
    sedentarySeconds                 INTEGER not null,
    sleepingSeconds                  INTEGER not null,
    moderateIntensityMinutes         INTEGER not null,
    vigorousIntensityMinutes         INTEGER not null,
    intensityMinutesGoal             INTEGER not null,
    floorsAscendedInMeters           REAL    not null,
    floorsDescendedInMeters          REAL    not null,
    floorsAscended                   REAL    not null,
    floorsDescended                  REAL    not null,
    userFloorsAscendedGoal           INTEGER not null,
    minHeartRate                     INTEGER not null,
    maxHeartRate                     INTEGER not null,
    restingHeartRate                 INTEGER not null,
    lastSevenDaysAvgRestingHeartRate INTEGER not null,
    averageStressLevel               INTEGER not null,
    maxStressLevel                   INTEGER not null,
    stressDuration                   INTEGER not null,
    restStressDuration               INTEGER not null,
    activityStressDuration           INTEGER not null,
    uncategorizedStressDuration      INTEGER not null,
    totalStressDuration              INTEGER not null,
    lowStressDuration                INTEGER not null,
    mediumStressDuration             INTEGER not null,
    highStressDuration               INTEGER not null,
    stressPercentage                 REAL    not null,
    restStressPercentage             REAL    not null,
    activityStressPercentage         REAL    not null,
    uncategorizedStressPercentage    REAL    not null,
    lowStressPercentage              REAL    not null,
    mediumStressPercentage           REAL    not null,
    highStressPercentage             REAL    not null,
    stressQualifier                  TEXT,
    measureableAwakeDuration         INTEGER not null,
    measureableAsleepDuration        INTEGER not null,
    lastSyncTimestampGMT             INTEGER not null,
    bodyBatteryChargedValue          INTEGER not null,
    bodyBatteryDrainedValue          INTEGER not null,
    bodyBatteryHighestValue          INTEGER not null,
    bodyBatteryLowestValue           INTEGER not null,
    bodyBatteryMostRecentValue       INTEGER not null,
    hydrationValueInML               REAL    not null,
    hydrationGoalInML                REAL    not null,
    averageSpo2                      INTEGER not null,
    latestSpo2                       INTEGER not null,
    avgMonitoringEnvironmentAltitude INTEGER not null,
    avgWakingRespirationValue        INTEGER not null,
    highestRespirationValue          INTEGER not null,
    lowestRespirationValue           INTEGER not null,
    latestRespirationValue           INTEGER not null,
    latestRespirationTimeGMT         TEXT
);

create table weight
(
    samplePk       INTEGER not null
        primary key,
    date           INTEGER,
    weight         REAL,
    bmi            REAL,
    bodyFat        REAL,
    bodyWater      REAL,
    boneMass       INTEGER,
    muscleMass     INTEGER,
    physiqueRating INTEGER,
    visceralFat    INTEGER,
    metabolicAge   INTEGER,
    caloricIntake  INTEGER,
    sourceType     TEXT,
    weightDelta    REAL,
    lastUpdated    INTEGER not null
);

create table wellness_activities
(
    userProfilePk        INTEGER not null,
    activityUuid         TEXT    not null,
    calendarDate         TEXT    not null,
    startTimestampGMT    TEXT,
    endTimestampGMT      TEXT,
    startTimestampLocal  TEXT,
    endTimestampLocal    TEXT,
    activityName         TEXT,
    wellnessActivityType TEXT,
    notes                TEXT,
    rulePK               INTEGER,
    deviceMetaData       TEXT,
    summaryTypeDataList  TEXT,
    timeInZoneList       TEXT,
    contentList          TEXT,
    lastUpdated          INTEGER not null,
    primary key (activityUuid, calendarDate)
);

create table workouts
(
    workoutId          INTEGER not null
        primary key,
    lastUpdated        INTEGER not null,
    atpPlanId          INTEGER,
    itpPlanId          INTEGER,
    tpPlanName         TEXT,
    ownerId            INTEGER,
    scheduleDate       TEXT,
    scheduledWorkoutId INTEGER,
    workoutName        TEXT,
    workoutType        TEXT,
    workoutProtected   INTEGER,
    raceWorkout        INTEGER
);

