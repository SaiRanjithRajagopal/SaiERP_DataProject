CREATE TABLE [Purchase].[MRQ_Hdr] (
    [Refno]            BIGINT  IDENTITY (1, 1) NOT NULL,
    [Total_Items]      TINYINT NOT NULL,
    [CreatedBy]        BIGINT  NOT NULL,
    [LastModifiedBy]   BIGINT  NOT NULL,
    [CreatedDate]      DATE    DEFAULT (getdate()) NOT NULL,
    [LastModifiedDate] DATE    NOT NULL,
    PRIMARY KEY CLUSTERED ([Refno] ASC)
);

