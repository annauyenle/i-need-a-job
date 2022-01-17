import React, { useState, useEffect } from "react";
import Container from "@mui/material/Container";
import Grid from "@mui/material/Grid";

const JobPage = () => {
  const [statuses, setStatuses] = useState([]);
  const [error, setError] = useState("");

  useEffect(() => {
    const fetchStatuses = async () => {
      try {
        const res = await fetch("http://localhost:3000/api/v1/job_statuses");
        const json = await res.json();
        if (res.ok) {
          setStatuses(json);
        } else {
          setError(res);
        }
      } catch (e) {
        setError(err);
      }
    };
    fetchStatuses();
  }, []);

  console.log(statuses.data);

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
  );
};

export default JobPage;
