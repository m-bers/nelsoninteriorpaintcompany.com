FROM gatsbyjs/gatsby:onbuild as build

FROM gatsbyjs/gatsby
COPY --from=build /public /pub
