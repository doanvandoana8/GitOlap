SELECT [dbo].[SchoolType].SCHOOL_TYPE_ID,[dbo].[SchoolType].SCHOOL_TYPE_NAME,
[dbo].[School].SCHOOL_NAME,[dbo].[School].SCHOOL_NUMBER,
[dbo].[DataLevel].DATA_LEVEL_NAME,
[dbo].[District].DISTRICT_NAME,
[dbo].[Fsa_Skill_Code].FSA_SKILL_CODE,
[dbo].[SchoolYear].START_YEAR,[dbo].[SchoolYear].END_YEAR,
[dbo].[SubPopulation].SUB_POPULATION_NAME,
[dbo].[Fact].FACT_ID,[dbo].[Fact].SCHOOL_YEAR_ID,[dbo].[Fact].DATA_LEVEL_ID,[dbo].[Fact].DISTRICT_NUMBER,
[dbo].[Fact].SCHOOL_ID,[dbo].[Fact].SUB_POPULATION,[dbo].[Fact].FSA_SKILL_CODE_ID,[dbo].[Fact].GRADE_VALUE,
[dbo].[Fact].NUMBER_EXPECTED_WRITERS,[dbo].[Fact].NUMBER_WRITERS,[dbo].[Fact].NUMBER_UNKNOWN,[dbo].[Fact].NUMBER_BELOW,
[dbo].[Fact].NUMBER_MEETING,[dbo].[Fact].NUMBER_EXCEEDING,[dbo].[Fact].SCORE
INTO DataTempSeminar
FROM [dbo].[DataLevel],[dbo].[District],[dbo].[Fact],[dbo].[Fsa_Skill_Code],[dbo].[Grade],[dbo].[School],[dbo].[SchoolType],[dbo].[SchoolYear],[dbo].[SubPopulation]
WHERE [dbo].[SchoolType].SCHOOL_TYPE_ID=[dbo].[School].SCHOOL_TYPE_ID AND
[dbo].[School].SCHOOL_ID = [dbo].[Fact].SCHOOL_ID AND 
[dbo].[DataLevel].DATA_LEVEL_ID = [dbo].[Fact].DATA_LEVEL_ID AND
[dbo].[District].DISTRICT_NUMBER = [dbo].[Fact].DISTRICT_NUMBER AND
[dbo].[Grade].GRADE_VALUE = [dbo].[Fact].GRADE_VALUE AND
[dbo].[Fsa_Skill_Code].FSA_SKILL_CODE_ID = [dbo].[Fact].FSA_SKILL_CODE_ID AND
[dbo].[SchoolYear].SCHOOL_YEAR_ID = [dbo].[Fact].SCHOOL_YEAR_ID AND
[dbo].[SubPopulation].SUB_POPULATION_ID = [dbo].[Fact].SUB_POPULATION