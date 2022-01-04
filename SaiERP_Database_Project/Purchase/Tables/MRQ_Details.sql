CREATE TABLE [Purchase].[MRQ_Details] (
    [Refno]          BIGINT           IDENTITY (1, 1) NOT NULL,
    [Hdr_Refno_Fk]   BIGINT           NOT NULL,
    [Item_Master_No] UNIQUEIDENTIFIER NULL,
    [Sno]            SMALLINT         NOT NULL,
    [Qty]            FLOAT (53)       NULL,
    [Notes]          VARCHAR (2000)   NULL,
    PRIMARY KEY CLUSTERED ([Refno] ASC),
    FOREIGN KEY ([Hdr_Refno_Fk]) REFERENCES [Purchase].[MRQ_Hdr] ([Refno])
);

