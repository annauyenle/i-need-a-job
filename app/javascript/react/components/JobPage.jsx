import React from 'react'
import Container from '@mui/material/Container';
import Grid from '@mui/material/Grid'

export const JobPage = () => {
  return (
    <Container maxWidth="sm">
      <Grid container spacing={2}>
        <Grid item xs={12}>
          <div>search bar</div>
        </Grid>

        <Grid item xs={12}>
          <div>add new job</div>
        </Grid>

        <Grid item xs={12}>
          <div>table</div>
        </Grid>
      </Grid>
    </Container>
  )
}
