CombineDataIntoDF <- function(file_a, file_b) {
    ## combine 2 file datasets into 1 dataset

    # read data from 2 file directory
    df_a <- fread(file_a)
    df_b <- fread(file_b)
    
    
    # change data format with tbl_df
    tbl_df_a <- tbl_df(df_a)
    tbl_df_b <- tbl_df(df_b)
    
    # combine 2 datasets into 1 dataset
    combined_tbl_df <- rbind(tbl_df_a, tbl_df_b)
    
    rm("df_a")
    rm("df_b")
    rm("tbl_df_a")
    rm("tbl_df_b")
    return(combined_tbl_df)
} 