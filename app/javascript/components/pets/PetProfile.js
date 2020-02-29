import React from "react";
import PropTypes from "prop-types";
import { Button, Form, Box, TextInput, Text, FormField } from "grommet";
import { FormNextLink } from "grommet-icons";
import styled from "styled-components";

const StyledFormField = styled(FormField)`
  border: none;
  div {
    border: none;
  }
  label {
    margin-left: 0;
  }
`;

class PetProfile extends React.Component {
  render() {
    return (
      <Box width={"medium"} animation={"slideUp"}>
        <Form align="center">
          <StyledFormField
            label={
              <Text size={"small"} weight={"bold"}>
                Your pet's name
              </Text>
            }
          >
            <TextInput
              type="text"
              plain={false}
              placeholder="type here"
              style={{ marginBotton: "3px" }}
            />
          </StyledFormField>
          <StyledFormField
            label={
              <Text size={"small"} weight={"bold"}>
                Your pet's birthday
              </Text>
            }
          >
            <TextInput
              type="date"
              plain={false}
              placeholder="type here"
              style={{ marginBotton: "3px" }}
            />
          </StyledFormField>
          <Button
            type="reset"
            label="Reset"
            margin={{ top: "xsmall", right: "xsmall" }}
            color="light-6"
          />
          <Button
            type="submit"
            label="Next"
            primary
            icon={<FormNextLink />}
            reverse
          />
        </Form>
      </Box>
    );
  }
}

PetProfile.propTypes = {
  name: PropTypes.string,
  birthday: PropTypes.node,
  type: PropTypes.string,
  breed: PropTypes.string,
  description: PropTypes.node,
  microchipNumber: PropTypes.string,
  adoptionDate: PropTypes.node
};

export default PetProfile;
