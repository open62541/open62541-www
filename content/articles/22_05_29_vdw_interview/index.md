+++
fragment = "content"
title = "Interview with Götz Görisch from the VDW"
weight = 100
display_date = true
date = "2022-05-29"
#image = "releasenote.png"
summary = """
Interview with Götz Görisch from the (VDW – Verein Deutscher Werkzeugmaschinenfabriken e.V.) about future M2M communication and OPC UA.
"""

#[asset]
#  image = "releasenote.png"
+++

#### 1. Who are you and what is your role at VDW?
Hi, my name is Götz Görisch. I work at the German Machine Tool Builders` Association (VDW – Verein Deutscher Werkzeugmaschinenfabriken e.V.) as the expert for digitization and open interfaces. I am the elected chairperson for the “OPC UA for Machine Tools joint working group” with the OPC Foundation. In this position I’m leading the companion spec work for OPC 40501 (UA4MT) and 40502 (UA4CNC). Additional I’m an “umati evangelist” for the umati community to drive the adoption of OPC UA in the machine building industries.
Eight of the VDW’s members constitute the “core group” which leads the way to develop the OPC UA standards. I coordinate these activities. We are supported by the Institute for Control Engineering of Machine Tools and Manufacturing Units (ISW) from the University of Stuttgart; therefore, it is my pleasure to also introduce Christian von Arnim. He is Research Assistant and is doing most of the work concerning open62541 on our behalf. The browser-based dashboard application at the EMO 2019 was mostly developed by him. Apart from OPC UA, his research area is “reconfigured real-time production networks”.

#### 2. Since when do you know and use OPC UA and the open62541 SDK?
I’m deeply involved in the OPC community since 2018 and already back then I got the attention for open62541. Originally, we started this companion specification work in 2017 with a commercial C++ SDK, which supported us until 2019. Christian von Arnim started working with OPC UA in 2014. After open62541 was chosen as the most promising Open Source OPC UA SDK in his research project back in 2017, he realized several projects using this SDK.

#### 3. Within the universal machine technology interface (umati), the OPC UA standard is an important part of the solution. What advantages and added value do you see in the use of OPC UA?
Although we have “interface” in the name, I would like to resolve the misunderstanding that this is an interface standard. Behind umati is a community of more than 200 partners who share the vision to enable “Plug and Play” for the machine building industry users. Therefore, on the one hand we are developing together with the VDMA and the OPC-Foundation companion specifications to create the Global Production Language based on OPC UA with machine information interoperability. On the other hand, the partners join forces to solve the technical challenges and develop solutions together for the sake of their customers. The Open-Source OPC UA community and open62541 play a crucial role to achieve this goal together. A success story in this regard for the machine tool and woodworking groups to extend open62541 and to upstream feature development can be found at https://umati.org/weinig-group-introduces-woodworking-companion-spec-into-umati-sample-server/ and the https://umati.org/dashboard-opc-ua-client/.

#### 4. Why did you or the VDW choose the open62541 library for the implementation of the umati standard?
As said above, umati is not a standard. It is a community to drive adoption of OPC UA and Open Source in the machinery industry. Specifically, the development of the OPC 40501-1 “UA for Machine Tools” specification led to amendments of the UA base specification. Suddenly, our CS was in the front line of OPC UA development. We noticed that commercial SDKs could not keep up with this rapid development as their development cycles are slower. Hence, this delayed the implementation of our specification in the products of our partners. Therefore, in the end of 2019, we started to develop a Sample Server for UA4MT to use throughout the remaining work ahead and to open source this implementation as a base for the community, other groups and interested parties in the companion specifications.

#### 5. What added value do you see in using the open6254- OPC UA SDK's?
open62541 gave us the flexibility to implement the new features of the base UA specification during the development phase of the specification amendment. Therefore, we were able to have a running server according to spec the day after the release of the new UA version. Our members who were relying on commercial products and SDK had to wait 3-9 month before the new base specification was available to them. This was for my personal the pivot point to fully endorse the development work with Open-Source SDKs like open62541.
Furthermore, the ability to fix bugs in the OPC UA SDK by us or partners like Weinig or basysKom, without the need to wait for a next release, greatly improved the development speed. Additionally, the are no runtime license costs and they can be directly reinvested in features and bug fixes.
Lastly, an Open-Source SDK like open62541 typically give the users the ability to run on different platforms, Win, Linux, x86, arm64 or in container images without porting costs.

#### 6. What role do open source libraries play for you in the implementation of umati?
For UA4MT we are also looking to provide sample implementations of servers and clients, we are doing this based on open62541, node-opcua and opcua-asyncio. Additionally with the machine tools group we started a project to further standardize towards underlying systems, which led to the first publication of a TransformationEngineAPI and will continue to get an Open Source reference implementation in 2022, where we for sure will make use of other related libraries.
For demonstration purpose we also build and continue to develop a dashboard application running at https://umati.app. This is also relying on more than 1000 Open-Source Projects from npm community to make this a reality. Also, there we are trying to provide bug fixes to the upstream projects.

Thank you to the open62541 for this great project to make OPC UA in the industry based on Open Source a reality.
