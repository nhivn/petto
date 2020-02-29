import React from "react";
import { Grommet, grommet, Box } from "grommet";
import PetProfile from "./pets/PetProfile";

const PettoContainer = () => (
  <Grommet theme={grommet}>
    <Box align="center" fill="horizontal" responsive pad={"small"}>
      <PetProfile />
    </Box>
  </Grommet>
);

export default PettoContainer;
