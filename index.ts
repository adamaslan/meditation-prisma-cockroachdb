import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  // ... you will write your Prisma Client queries here
  //   read all the users
  //   const allUsers = await prisma.user.findMany()
  //   console.log(allUsers)
  // write new records via create
  // await prisma.user.create({
  //     data: {
  //       name: 'Alice',
  //       email: 'alice@prisma.io',
  //       posts: {
  //         create: { title: 'Hello World' },
  //       },
  //       profile: {
  //         create: { bio: 'I like turtles' },
  //       },
  //     },
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
