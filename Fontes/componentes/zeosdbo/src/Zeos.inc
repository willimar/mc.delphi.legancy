// Compilation directives for Delphi 5
{$IFDEF VER130}
{$DEFINE VER130BELOW}
{$DEFINE VER140BELOW}
{$ENDIF}

{$IFDEF VER140}
{$DEFINE VER140BELOW}
{$ENDIF}

// Debug/release compiler options
{$D+}

{$IFOPT D-}
{$DEFINE BINARY_RELEASE}
{$ENDIF}

{$IFDEF BINARY_RELEASE}

// Settings for Release mode
{$C-}
{$I-}
{$R-}
{$L-}
{$O+}
{$Q-}
{$W-}

{$ELSE}

// Settings for Debug mode
{$C+}
{$I+}
{$R+}
{$L+}
{$O-}
{$Q+}
{$W+}

{$ENDIF}

// Disables checking code.
// Use Range checking option to turn on/off optimization
{$IFOPT R-}
{$DEFINE DISABLE_CHECKING}
{$ENDIF}


// Enables MySQL support in TZConnection/TZDataset
{$DEFINE ENABLE_MYSQL}

// Enables PostgreSQL support in TZConnection/TZDataset
{$DEFINE ENABLE_POSTGRESQL}

// Enables Sybase/MSSQL support in TZConnection/TZDataset
{$DEFINE ENABLE_DBLIB}

// Enables ADO support in TZConnection/TZDataset
{$DEFINE ENABLE_ADO}

// Enables Interbase/Firebird support in TZConnection/TZDataset
{$DEFINE ENABLE_INTERBASE}

// Enables SQLite support in TZConnection/TZDataset
{$DEFINE ENABLE_SQLITE}

// Enables Oracle support in TZConnection/TZDataset
{$DEFINE ENABLE_ORACLE}

// Supported language. Now available languages:
// ENGLISH, RUSSIAN, GERMAN, PORTUGUESE, FRENCH,
// POLISH, CZECH, ITALIAN, SPANISH, HUNGARY 
{$DEFINE ENGLISH}

// Prevents loading default libmysql.dll
{$DEFINE MYSQL_STRICT_DLL_LOADING}

// Prevents loading default libpq.dll
{$DEFINE POSTGRESQL_STRICT_DLL_LOADING}

//Allows to see SQL exceptions as strings 
{$DEFINE INTERBASE_EXTENDED_MESSAGES}

// Loads libcrypt.so before Firebird client library.
// It fixes error "Undefined symbol: crypt".
{$DEFINE INTERBASE_CRYPT}

// Excludes old ZeosDBO from the performance tests
{$DEFINE EXCLUDE_OLD_ZEOS_TEST}

// Excludes DBExpress from the performance tests
{$DEFINE EXCLUDE_DBX_TEST}

// Excludes IBX from the performance tests
{$DEFINE EXCLUDE_IBX_TEST}

// Excludes BDE from the performance tests
{$DEFINE EXCLUDE_BDE_TEST}

// Registers property editors for the components.
{$DEFINE WITH_PROPERTY_EDITOR}

// Turn on IProviderSupport interface
{$DEFINE WITH_IPROVIDER}

// Turn on multithreading
{$DEFINE MULTI_THREADED}
